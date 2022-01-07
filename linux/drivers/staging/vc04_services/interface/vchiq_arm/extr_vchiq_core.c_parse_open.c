
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {scalar_t__ version_common; int id; } ;
struct vchiq_service {short version; short version_min; short peer_version; scalar_t__ srvstate; unsigned int remoteport; int client_id; scalar_t__ sync; int localport; } ;
struct vchiq_openack_payload {short member_0; } ;
struct vchiq_open_payload {unsigned int fourcc; short version; short version_min; } ;
struct vchiq_header {int msgid; int size; scalar_t__ data; } ;
typedef int ack_payload ;


 int VCHIQ_FOURCC_AS_4CHARS (unsigned int) ;
 int VCHIQ_MAKE_MSG (int ,int ,unsigned int) ;
 int VCHIQ_MSG_CLOSE ;
 unsigned int VCHIQ_MSG_DSTPORT (int) ;
 int VCHIQ_MSG_OPENACK ;
 unsigned int VCHIQ_MSG_SRCPORT (int) ;
 unsigned int VCHIQ_PORT_FREE ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_OPENED ;
 scalar_t__ VCHIQ_SRVSTATE_LISTENING ;
 int VCHIQ_SRVSTATE_OPEN ;
 int VCHIQ_SRVSTATE_OPENSYNC ;
 scalar_t__ VCHIQ_VERSION_SYNCHRONOUS_MODE ;
 struct vchiq_service* get_listening_service (struct vchiq_state*,unsigned int) ;
 scalar_t__ make_service_callback (struct vchiq_service*,int ,int *,int *) ;
 int * memcpy_copy_callback ;
 scalar_t__ queue_message (struct vchiq_state*,int *,int ,int *,struct vchiq_openack_payload*,int,int ) ;
 scalar_t__ queue_message_sync (struct vchiq_state*,int *,int ,int *,struct vchiq_openack_payload*,int,int ) ;
 int unlock_service (struct vchiq_service*) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,struct vchiq_header*,unsigned int,int ) ;
 int vchiq_loud_error (char*,int ,int ,int ,short,short,short,short) ;
 int vchiq_loud_error_footer () ;
 int vchiq_loud_error_header () ;
 int vchiq_set_service_state (struct vchiq_service*,int ) ;

__attribute__((used)) static int
parse_open(struct vchiq_state *state, struct vchiq_header *header)
{
 struct vchiq_service *service = ((void*)0);
 int msgid, size;
 unsigned int localport, remoteport;

 msgid = header->msgid;
 size = header->size;
 localport = VCHIQ_MSG_DSTPORT(msgid);
 remoteport = VCHIQ_MSG_SRCPORT(msgid);
 if (size >= sizeof(struct vchiq_open_payload)) {
  const struct vchiq_open_payload *payload =
   (struct vchiq_open_payload *)header->data;
  unsigned int fourcc;

  fourcc = payload->fourcc;
  vchiq_log_info(vchiq_core_log_level,
   "%d: prs OPEN@%pK (%d->'%c%c%c%c')",
   state->id, header, localport,
   VCHIQ_FOURCC_AS_4CHARS(fourcc));

  service = get_listening_service(state, fourcc);

  if (service) {

   short version = payload->version;
   short version_min = payload->version_min;

   if ((service->version < version_min) ||
    (version < service->version_min)) {

    vchiq_loud_error_header();
    vchiq_loud_error("%d: service %d (%c%c%c%c) "
     "version mismatch - local (%d, min %d)"
     " vs. remote (%d, min %d)",
     state->id, service->localport,
     VCHIQ_FOURCC_AS_4CHARS(fourcc),
     service->version, service->version_min,
     version, version_min);
    vchiq_loud_error_footer();
    unlock_service(service);
    service = ((void*)0);
    goto fail_open;
   }
   service->peer_version = version;

   if (service->srvstate == VCHIQ_SRVSTATE_LISTENING) {
    struct vchiq_openack_payload ack_payload = {
     service->version
    };

    if (state->version_common <
        VCHIQ_VERSION_SYNCHRONOUS_MODE)
     service->sync = 0;


    if (service->sync) {
     if (queue_message_sync(
      state,
      ((void*)0),
      VCHIQ_MAKE_MSG(
       VCHIQ_MSG_OPENACK,
       service->localport,
       remoteport),
      memcpy_copy_callback,
      &ack_payload,
      sizeof(ack_payload),
      0) == VCHIQ_RETRY)
      goto bail_not_ready;
    } else {
     if (queue_message(state,
       ((void*)0),
       VCHIQ_MAKE_MSG(
       VCHIQ_MSG_OPENACK,
       service->localport,
       remoteport),
      memcpy_copy_callback,
      &ack_payload,
      sizeof(ack_payload),
      0) == VCHIQ_RETRY)
      goto bail_not_ready;
    }


    vchiq_set_service_state(service,
     service->sync ? VCHIQ_SRVSTATE_OPENSYNC
     : VCHIQ_SRVSTATE_OPEN);
   }

   service->remoteport = remoteport;
   service->client_id = ((int *)header->data)[1];
   if (make_service_callback(service, VCHIQ_SERVICE_OPENED,
    ((void*)0), ((void*)0)) == VCHIQ_RETRY) {

    service->remoteport = VCHIQ_PORT_FREE;
    goto bail_not_ready;
   }


   unlock_service(service);
   return 1;
  }
 }

fail_open:

 if (queue_message(state, ((void*)0),
  VCHIQ_MAKE_MSG(VCHIQ_MSG_CLOSE, 0, VCHIQ_MSG_SRCPORT(msgid)),
  ((void*)0), ((void*)0), 0, 0) == VCHIQ_RETRY)
  goto bail_not_ready;

 return 1;

bail_not_ready:
 if (service)
  unlock_service(service);

 return 0;
}
