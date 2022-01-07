
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_state {int id; int sync_trigger_event; TYPE_1__* remote; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int sync_trigger; } ;
struct TYPE_4__ {int fourcc; } ;
struct vchiq_service {unsigned int remoteport; int sync; int srvstate; int remove_event; int peer_version; TYPE_2__ base; } ;
struct vchiq_openack_payload {int version; } ;
struct vchiq_header {int msgid; int size; scalar_t__ data; } ;
struct TYPE_3__ {int slot_sync; } ;


 scalar_t__ SLOT_DATA_FROM_INDEX (struct vchiq_state*,int ) ;
 struct vchiq_header* VCHIQ_FOURCC_AS_4CHARS (int) ;
 scalar_t__ VCHIQ_LOG_TRACE ;
 int VCHIQ_MAKE_FOURCC (char,char,char,char) ;
 int VCHIQ_MESSAGE_AVAILABLE ;

 unsigned int VCHIQ_MSG_DSTPORT (int) ;

 unsigned int VCHIQ_MSG_SRCPORT (int) ;
 int VCHIQ_MSG_TYPE (int) ;
 int VCHIQ_RETRY ;
 int VCHIQ_SRVSTATE_OPENING ;
 int VCHIQ_SRVSTATE_OPENSYNC ;
 int complete (int *) ;
 struct vchiq_service* find_service_by_port (struct vchiq_state*,unsigned int) ;
 int make_service_callback (struct vchiq_service*,int ,struct vchiq_header*,int *) ;
 int min (int,int) ;
 int msg_type_str (int) ;
 int release_message_sync (struct vchiq_state*,struct vchiq_header*) ;
 int remote_event_wait (int *,int *) ;
 int rmb () ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_log_dump_mem (char*,int ,scalar_t__,int ) ;
 int vchiq_log_error (scalar_t__,char*,unsigned int,...) ;
 int vchiq_log_info (scalar_t__,char*,int ,struct vchiq_header*,int,unsigned int,unsigned int,int ) ;
 int vchiq_log_trace (scalar_t__,char*,int ,struct vchiq_header*,int,unsigned int,unsigned int) ;
 int vchiq_set_service_state (struct vchiq_service*,int ) ;
 scalar_t__ vchiq_sync_log_level ;

__attribute__((used)) static int
sync_func(void *v)
{
 struct vchiq_state *state = v;
 struct vchiq_shared_state *local = state->local;
 struct vchiq_header *header =
  (struct vchiq_header *)SLOT_DATA_FROM_INDEX(state,
   state->remote->slot_sync);

 while (1) {
  struct vchiq_service *service;
  int msgid, size;
  int type;
  unsigned int localport, remoteport;

  remote_event_wait(&state->sync_trigger_event, &local->sync_trigger);

  rmb();

  msgid = header->msgid;
  size = header->size;
  type = VCHIQ_MSG_TYPE(msgid);
  localport = VCHIQ_MSG_DSTPORT(msgid);
  remoteport = VCHIQ_MSG_SRCPORT(msgid);

  service = find_service_by_port(state, localport);

  if (!service) {
   vchiq_log_error(vchiq_sync_log_level,
    "%d: sf %s@%pK (%d->%d) - invalid/closed service %d",
    state->id, msg_type_str(type),
    header, remoteport, localport, localport);
   release_message_sync(state, header);
   continue;
  }

  if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
   int svc_fourcc;

   svc_fourcc = service
    ? service->base.fourcc
    : VCHIQ_MAKE_FOURCC('?', '?', '?', '?');
   vchiq_log_trace(vchiq_sync_log_level,
    "Rcvd Msg %s from %c%c%c%c s:%d d:%d len:%d",
    msg_type_str(type),
    VCHIQ_FOURCC_AS_4CHARS(svc_fourcc),
    remoteport, localport, size);
   if (size > 0)
    vchiq_log_dump_mem("Rcvd", 0, header->data,
     min(16, size));
  }

  switch (type) {
  case 128:
   if (size >= sizeof(struct vchiq_openack_payload)) {
    const struct vchiq_openack_payload *payload =
     (struct vchiq_openack_payload *)
     header->data;
    service->peer_version = payload->version;
   }
   vchiq_log_info(vchiq_sync_log_level,
    "%d: sf OPENACK@%pK,%x (%d->%d) v:%d",
    state->id, header, size, remoteport, localport,
    service->peer_version);
   if (service->srvstate == VCHIQ_SRVSTATE_OPENING) {
    service->remoteport = remoteport;
    vchiq_set_service_state(service,
     VCHIQ_SRVSTATE_OPENSYNC);
    service->sync = 1;
    complete(&service->remove_event);
   }
   release_message_sync(state, header);
   break;

  case 129:
   vchiq_log_trace(vchiq_sync_log_level,
    "%d: sf DATA@%pK,%x (%d->%d)",
    state->id, header, size, remoteport, localport);

   if ((service->remoteport == remoteport) &&
    (service->srvstate ==
    VCHIQ_SRVSTATE_OPENSYNC)) {
    if (make_service_callback(service,
     VCHIQ_MESSAGE_AVAILABLE, header,
     ((void*)0)) == VCHIQ_RETRY)
     vchiq_log_error(vchiq_sync_log_level,
      "synchronous callback to "
      "service %d returns "
      "VCHIQ_RETRY",
      localport);
   }
   break;

  default:
   vchiq_log_error(vchiq_sync_log_level,
    "%d: sf unexpected msgid %x@%pK,%x",
    state->id, msgid, header, size);
   release_message_sync(state, header);
   break;
  }

  unlock_service(service);
 }

 return 0;
}
