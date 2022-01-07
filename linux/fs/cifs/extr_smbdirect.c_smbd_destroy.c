
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smbd_response {int list; } ;
struct smbd_connection {scalar_t__ transport_status; scalar_t__ count_receive_queue; scalar_t__ count_empty_packet_queue; scalar_t__ receive_credit_max; int workqueue; int response_cache; int response_mempool; int request_cache; int request_mempool; TYPE_1__* id; int pd; int recv_cq; int send_cq; int mr_used_count; int wait_mr; int wait_receive_queues; scalar_t__ reassembly_data_length; int reassembly_queue_lock; int send_payload_pending; int wait_send_payload_pending; int send_pending; int wait_send_pending; int send_immediate_work; int idle_timer_work; int disconn_wait; } ;
struct TCP_Server_Info {int srv_mutex; struct smbd_connection* smbd_conn; } ;
struct TYPE_4__ {int qp; } ;


 int INFO ;
 scalar_t__ SMBD_DESTROYED ;
 scalar_t__ SMBD_DISCONNECTED ;
 struct smbd_response* _get_first_reassembly (struct smbd_connection*) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_mr_list (struct smbd_connection*) ;
 int destroy_receive_buffers (struct smbd_connection*) ;
 int destroy_workqueue (int ) ;
 int ib_dealloc_pd (int ) ;
 int ib_drain_qp (int ) ;
 int ib_free_cq (int ) ;
 int kfree (struct smbd_connection*) ;
 int kmem_cache_destroy (int ) ;
 int list_del (int *) ;
 int log_rdma_event (int ,char*) ;
 int mempool_destroy (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_receive_buffer (struct smbd_connection*,struct smbd_response*) ;
 int rdma_destroy_id (TYPE_1__*) ;
 int rdma_destroy_qp (TYPE_1__*) ;
 int rdma_disconnect (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_interruptible_all (int *) ;

void smbd_destroy(struct TCP_Server_Info *server)
{
 struct smbd_connection *info = server->smbd_conn;
 struct smbd_response *response;
 unsigned long flags;

 if (!info) {
  log_rdma_event(INFO, "rdma session already destroyed\n");
  return;
 }

 log_rdma_event(INFO, "destroying rdma session\n");
 if (info->transport_status != SMBD_DISCONNECTED) {
  rdma_disconnect(server->smbd_conn->id);
  log_rdma_event(INFO, "wait for transport being disconnected\n");
  wait_event_interruptible(
   info->disconn_wait,
   info->transport_status == SMBD_DISCONNECTED);
 }

 log_rdma_event(INFO, "destroying qp\n");
 ib_drain_qp(info->id->qp);
 rdma_destroy_qp(info->id);

 log_rdma_event(INFO, "cancelling idle timer\n");
 cancel_delayed_work_sync(&info->idle_timer_work);
 log_rdma_event(INFO, "cancelling send immediate work\n");
 cancel_delayed_work_sync(&info->send_immediate_work);

 log_rdma_event(INFO, "wait for all send posted to IB to finish\n");
 wait_event(info->wait_send_pending,
  atomic_read(&info->send_pending) == 0);
 wait_event(info->wait_send_payload_pending,
  atomic_read(&info->send_payload_pending) == 0);


 log_rdma_event(INFO, "drain the reassembly queue\n");
 do {
  spin_lock_irqsave(&info->reassembly_queue_lock, flags);
  response = _get_first_reassembly(info);
  if (response) {
   list_del(&response->list);
   spin_unlock_irqrestore(
    &info->reassembly_queue_lock, flags);
   put_receive_buffer(info, response);
  } else
   spin_unlock_irqrestore(
    &info->reassembly_queue_lock, flags);
 } while (response);
 info->reassembly_data_length = 0;

 log_rdma_event(INFO, "free receive buffers\n");
 wait_event(info->wait_receive_queues,
  info->count_receive_queue + info->count_empty_packet_queue
   == info->receive_credit_max);
 destroy_receive_buffers(info);
 log_rdma_event(INFO, "freeing mr list\n");
 wake_up_interruptible_all(&info->wait_mr);
 while (atomic_read(&info->mr_used_count)) {
  mutex_unlock(&server->srv_mutex);
  msleep(1000);
  mutex_lock(&server->srv_mutex);
 }
 destroy_mr_list(info);

 ib_free_cq(info->send_cq);
 ib_free_cq(info->recv_cq);
 ib_dealloc_pd(info->pd);
 rdma_destroy_id(info->id);


 mempool_destroy(info->request_mempool);
 kmem_cache_destroy(info->request_cache);

 mempool_destroy(info->response_mempool);
 kmem_cache_destroy(info->response_cache);

 info->transport_status = SMBD_DESTROYED;

 destroy_workqueue(info->workqueue);
 kfree(info);
}
