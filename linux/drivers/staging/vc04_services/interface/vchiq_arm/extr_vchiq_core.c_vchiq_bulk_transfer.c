
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int slot_mutex; int id; } ;
struct vchiq_bulk_queue {scalar_t__ local_insert; scalar_t__ remove; int process; int remote_insert; struct vchiq_bulk* bulks; } ;
struct vchiq_service {scalar_t__ srvstate; int bulk_mutex; int localport; int remoteport; int bulk_remove_event; struct vchiq_bulk_queue bulk_rx; struct vchiq_bulk_queue bulk_tx; struct vchiq_state* state; } ;
struct vchiq_bulk {int mode; int size; scalar_t__ data; scalar_t__ actual; void* userdata; int dir; } ;
struct bulk_waiter {scalar_t__ actual; int event; struct vchiq_bulk* bulk; } ;
typedef int payload ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_BULK_MODE_T ;
typedef int VCHIQ_BULK_DIR_T ;


 size_t BULK_INDEX (scalar_t__) ;
 int QMFLAGS_IS_BLOCKING ;
 int QMFLAGS_NO_MUTEX_LOCK ;
 int QMFLAGS_NO_MUTEX_UNLOCK ;
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ;




 int VCHIQ_BULK_TRANSMIT ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_MAKE_MSG (int const,int ,int ) ;
 int VCHIQ_MSG_BULK_RX ;
 int VCHIQ_MSG_BULK_TX ;
 scalar_t__ VCHIQ_NUM_SERVICE_BULKS ;
 scalar_t__ VCHIQ_RETRY ;
 int VCHIQ_SERVICE_STATS_INC (struct vchiq_service*,int ) ;
 scalar_t__ VCHIQ_SRVSTATE_OPEN ;
 scalar_t__ VCHIQ_SUCCESS ;
 int bulk_stalls ;
 struct vchiq_service* find_service_by_handle (int ) ;
 int init_completion (int *) ;
 int memcpy_copy_callback ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ queue_message (struct vchiq_state*,int *,int ,int ,int**,int,int) ;
 int unlock_service (struct vchiq_service*) ;
 scalar_t__ vchiq_check_service (struct vchiq_service*) ;
 int vchiq_complete_bulk (struct vchiq_bulk*) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ,char const,int,scalar_t__,void*) ;
 int vchiq_log_trace (int ,char*,int ,int ,char const,scalar_t__,int ,int ) ;
 scalar_t__ vchiq_prepare_bulk_data (struct vchiq_bulk*,void*,int,int ) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;
 int wmb () ;

VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
       void *offset, int size, void *userdata,
       VCHIQ_BULK_MODE_T mode,
       VCHIQ_BULK_DIR_T dir)
{
 struct vchiq_service *service = find_service_by_handle(handle);
 struct vchiq_bulk_queue *queue;
 struct vchiq_bulk *bulk;
 struct vchiq_state *state;
 struct bulk_waiter *bulk_waiter = ((void*)0);
 const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
 const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
  VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
 VCHIQ_STATUS_T status = VCHIQ_ERROR;
 int payload[2];

 if (!service || service->srvstate != VCHIQ_SRVSTATE_OPEN ||
     !offset || vchiq_check_service(service) != VCHIQ_SUCCESS)
  goto error_exit;

 switch (mode) {
 case 129:
 case 130:
  break;
 case 131:
  bulk_waiter = userdata;
  init_completion(&bulk_waiter->event);
  bulk_waiter->actual = 0;
  bulk_waiter->bulk = ((void*)0);
  break;
 case 128:
  bulk_waiter = userdata;
  bulk = bulk_waiter->bulk;
  goto waiting;
 default:
  goto error_exit;
 }

 state = service->state;

 queue = (dir == VCHIQ_BULK_TRANSMIT) ?
  &service->bulk_tx : &service->bulk_rx;

 if (mutex_lock_killable(&service->bulk_mutex)) {
  status = VCHIQ_RETRY;
  goto error_exit;
 }

 if (queue->local_insert == queue->remove + VCHIQ_NUM_SERVICE_BULKS) {
  VCHIQ_SERVICE_STATS_INC(service, bulk_stalls);
  do {
   mutex_unlock(&service->bulk_mutex);
   if (wait_for_completion_interruptible(
      &service->bulk_remove_event)) {
    status = VCHIQ_RETRY;
    goto error_exit;
   }
   if (mutex_lock_killable(&service->bulk_mutex)) {
    status = VCHIQ_RETRY;
    goto error_exit;
   }
  } while (queue->local_insert == queue->remove +
    VCHIQ_NUM_SERVICE_BULKS);
 }

 bulk = &queue->bulks[BULK_INDEX(queue->local_insert)];

 bulk->mode = mode;
 bulk->dir = dir;
 bulk->userdata = userdata;
 bulk->size = size;
 bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;

 if (vchiq_prepare_bulk_data(bulk, offset, size, dir) != VCHIQ_SUCCESS)
  goto unlock_error_exit;

 wmb();

 vchiq_log_info(vchiq_core_log_level,
  "%d: bt (%d->%d) %cx %x@%pK %pK",
  state->id, service->localport, service->remoteport, dir_char,
  size, bulk->data, userdata);



 if (mutex_lock_killable(&state->slot_mutex)) {
  status = VCHIQ_RETRY;
  goto cancel_bulk_error_exit;
 }

 if (service->srvstate != VCHIQ_SRVSTATE_OPEN)
  goto unlock_both_error_exit;

 payload[0] = (int)(long)bulk->data;
 payload[1] = bulk->size;
 status = queue_message(state,
          ((void*)0),
          VCHIQ_MAKE_MSG(dir_msgtype,
           service->localport,
           service->remoteport),
          memcpy_copy_callback,
          &payload,
          sizeof(payload),
          QMFLAGS_IS_BLOCKING |
          QMFLAGS_NO_MUTEX_LOCK |
          QMFLAGS_NO_MUTEX_UNLOCK);
 if (status != VCHIQ_SUCCESS)
  goto unlock_both_error_exit;

 queue->local_insert++;

 mutex_unlock(&state->slot_mutex);
 mutex_unlock(&service->bulk_mutex);

 vchiq_log_trace(vchiq_core_log_level,
  "%d: bt:%d %cx li=%x ri=%x p=%x",
  state->id,
  service->localport, dir_char,
  queue->local_insert, queue->remote_insert, queue->process);

waiting:
 unlock_service(service);

 status = VCHIQ_SUCCESS;

 if (bulk_waiter) {
  bulk_waiter->bulk = bulk;
  if (wait_for_completion_interruptible(&bulk_waiter->event))
   status = VCHIQ_RETRY;
  else if (bulk_waiter->actual == VCHIQ_BULK_ACTUAL_ABORTED)
   status = VCHIQ_ERROR;
 }

 return status;

unlock_both_error_exit:
 mutex_unlock(&state->slot_mutex);
cancel_bulk_error_exit:
 vchiq_complete_bulk(bulk);
unlock_error_exit:
 mutex_unlock(&service->bulk_mutex);

error_exit:
 if (service)
  unlock_service(service);
 return status;
}
