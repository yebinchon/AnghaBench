
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vchiq_state {int sync_mutex; TYPE_2__* remote; int slot_mutex; int id; int sync_release_event; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int slot_sync; int sync_release; } ;
struct TYPE_3__ {int fourcc; } ;
struct vchiq_service {TYPE_1__ base; } ;
struct vchiq_header {int msgid; int size; int data; } ;
typedef scalar_t__ ssize_t ;
typedef int VCHIQ_STATUS_T ;
struct TYPE_4__ {int sync_trigger; } ;


 scalar_t__ SLOT_DATA_FROM_INDEX (struct vchiq_state*,int ) ;
 scalar_t__ SRVTRACE_ENABLED (struct vchiq_service*,int ) ;
 int VCHIQ_ERROR ;
 int VCHIQ_FOURCC_AS_4CHARS (int) ;
 int VCHIQ_LOG_INFO ;
 scalar_t__ VCHIQ_LOG_TRACE ;
 int VCHIQ_MAKE_FOURCC (char,char,char,char) ;
 int VCHIQ_MSGID_PADDING ;
 int VCHIQ_MSG_DSTPORT (int) ;
 scalar_t__ VCHIQ_MSG_PAUSE ;
 scalar_t__ VCHIQ_MSG_RESUME ;
 int VCHIQ_MSG_SRCPORT (int) ;
 scalar_t__ VCHIQ_MSG_TYPE (int) ;
 int VCHIQ_RETRY ;
 int VCHIQ_SERVICE_STATS_ADD (struct vchiq_service*,int ,int) ;
 int VCHIQ_SERVICE_STATS_INC (struct vchiq_service*,int ) ;
 int VCHIQ_STATS_INC (struct vchiq_state*,int ) ;
 int VCHIQ_SUCCESS ;
 scalar_t__ copy_message_data (ssize_t (*) (void*,void*,size_t,size_t),void*,int ,int) ;
 int ctrl_tx_bytes ;
 int ctrl_tx_count ;
 int error_count ;
 int min (size_t,size_t) ;
 int msg_type_str (scalar_t__) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int remote_event_signal (int *) ;
 int remote_event_wait (int *,int *) ;
 int rmb () ;
 int vchiq_core_log_level ;
 int vchiq_log_dump_mem (char*,int ,int ,int ) ;
 int vchiq_log_error (int ,char*,int ,int) ;
 int vchiq_log_info (scalar_t__,char*,int ,int ,struct vchiq_header*,int,int ,int ) ;
 int vchiq_log_trace (scalar_t__,char*,int ,scalar_t__,int ,int ,int ,int) ;
 scalar_t__ vchiq_sync_log_level ;

__attribute__((used)) static VCHIQ_STATUS_T
queue_message_sync(struct vchiq_state *state, struct vchiq_service *service,
     int msgid,
     ssize_t (*copy_callback)(void *context, void *dest,
         size_t offset, size_t maxsize),
     void *context, int size, int is_blocking)
{
 struct vchiq_shared_state *local;
 struct vchiq_header *header;
 ssize_t callback_result;

 local = state->local;

 if (VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_RESUME &&
     mutex_lock_killable(&state->sync_mutex))
  return VCHIQ_RETRY;

 remote_event_wait(&state->sync_release_event, &local->sync_release);

 rmb();

 header = (struct vchiq_header *)SLOT_DATA_FROM_INDEX(state,
  local->slot_sync);

 {
  int oldmsgid = header->msgid;

  if (oldmsgid != VCHIQ_MSGID_PADDING)
   vchiq_log_error(vchiq_core_log_level,
    "%d: qms - msgid %x, not PADDING",
    state->id, oldmsgid);
 }

 vchiq_log_info(vchiq_sync_log_level,
         "%d: qms %s@%pK,%x (%d->%d)", state->id,
         msg_type_str(VCHIQ_MSG_TYPE(msgid)),
         header, size, VCHIQ_MSG_SRCPORT(msgid),
         VCHIQ_MSG_DSTPORT(msgid));

 callback_result =
  copy_message_data(copy_callback, context,
      header->data, size);

 if (callback_result < 0) {
  mutex_unlock(&state->slot_mutex);
  VCHIQ_SERVICE_STATS_INC(service,
     error_count);
  return VCHIQ_ERROR;
 }

 if (service) {
  if (SRVTRACE_ENABLED(service,
         VCHIQ_LOG_INFO))
   vchiq_log_dump_mem("Sent", 0,
        header->data,
        min((size_t)16,
            (size_t)callback_result));

  VCHIQ_SERVICE_STATS_INC(service, ctrl_tx_count);
  VCHIQ_SERVICE_STATS_ADD(service, ctrl_tx_bytes, size);
 } else {
  VCHIQ_STATS_INC(state, ctrl_tx_count);
 }

 header->size = size;
 header->msgid = msgid;

 if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
  int svc_fourcc;

  svc_fourcc = service
   ? service->base.fourcc
   : VCHIQ_MAKE_FOURCC('?', '?', '?', '?');

  vchiq_log_trace(vchiq_sync_log_level,
   "Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d",
   msg_type_str(VCHIQ_MSG_TYPE(msgid)),
   VCHIQ_MSG_TYPE(msgid),
   VCHIQ_FOURCC_AS_4CHARS(svc_fourcc),
   VCHIQ_MSG_SRCPORT(msgid),
   VCHIQ_MSG_DSTPORT(msgid),
   size);
 }

 remote_event_signal(&state->remote->sync_trigger);

 if (VCHIQ_MSG_TYPE(msgid) != VCHIQ_MSG_PAUSE)
  mutex_unlock(&state->sync_mutex);

 return VCHIQ_SUCCESS;
}
