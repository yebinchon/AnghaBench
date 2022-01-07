
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct smbd_connection {scalar_t__ transport_status; int keep_alive_interval; int responder_resources; TYPE_5__* id; int pd; int * recv_cq; int * send_cq; int conn_wait; int idle_timer_work; int lock_new_credits_offered; scalar_t__ new_credits_offered; int post_send_credits_work; int recv_done_work; int disconnect_work; int send_payload_pending; int wait_send_payload_pending; int send_pending; int wait_send_pending; int workqueue; int send_immediate_work; int wait_send_queue; int wait_reassembly_queue; int disconn_wait; int receive_credit_max; int send_credit_target; int max_receive_size; int max_fragmented_recv_size; int max_send_size; } ;
struct TYPE_11__ {scalar_t__ max_inline_data; void* max_recv_sge; void* max_send_sge; int max_recv_wr; int max_send_wr; } ;
struct rdma_conn_param {int responder_resources; int* private_data; int private_data_len; scalar_t__ flow_control; int rnr_retry_count; int retry_count; scalar_t__ initiator_depth; int port_num; int * recv_cq; int * send_cq; int qp_type; int sq_sig_type; TYPE_1__ cap; struct smbd_connection* qp_context; int event_handler; } ;
struct ib_qp_init_attr {int responder_resources; int* private_data; int private_data_len; scalar_t__ flow_control; int rnr_retry_count; int retry_count; scalar_t__ initiator_depth; int port_num; int * recv_cq; int * send_cq; int qp_type; int sq_sig_type; TYPE_1__ cap; struct smbd_connection* qp_context; int event_handler; } ;
struct ib_port_immutable {int core_cap_flags; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int qp_attr ;
typedef int ird_ord_hdr ;
typedef int conn_param ;
struct TYPE_15__ {int port_num; TYPE_4__* device; } ;
struct TYPE_12__ {int (* get_port_immutable ) (TYPE_4__*,int ,struct ib_port_immutable*) ;} ;
struct TYPE_13__ {void* max_send_sge; void* max_recv_sge; scalar_t__ max_qp_rd_atom; int max_qp_wr; int max_cqe; } ;
struct TYPE_14__ {TYPE_2__ ops; TYPE_3__ attrs; } ;


 int ERR ;
 int GFP_KERNEL ;
 int HZ ;
 int IB_POLL_SOFTIRQ ;
 int IB_QPT_RC ;
 int IB_SIGNAL_REQ_WR ;
 int INFO ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int RDMA_CORE_PORT_IWARP ;
 void* SMBDIRECT_MAX_SGE ;
 scalar_t__ SMBD_CM_RESPONDER_RESOURCES ;
 int SMBD_CM_RETRY ;
 int SMBD_CM_RNR_RETRY ;
 scalar_t__ SMBD_CONNECTED ;
 scalar_t__ SMBD_CONNECTING ;
 scalar_t__ SMBD_DISCONNECTED ;
 scalar_t__ SMBD_NEGOTIATE_FAILED ;
 int allocate_caches_and_workqueue (struct smbd_connection*) ;
 int allocate_mr_list (struct smbd_connection*) ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_caches_and_workqueue (struct smbd_connection*) ;
 void* ib_alloc_cq_any (TYPE_4__*,struct smbd_connection*,int ,int ) ;
 int ib_dealloc_pd (int ) ;
 int ib_free_cq (int *) ;
 int idle_connection_timer ;
 int init_waitqueue_head (int *) ;
 int kfree (struct smbd_connection*) ;
 struct smbd_connection* kzalloc (int,int ) ;
 int log_rdma_event (int ,char*,...) ;
 int log_rdma_mr (int ,char*,...) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int queue_delayed_work (int ,int *,int) ;
 int rdma_connect (TYPE_5__*,struct rdma_conn_param*) ;
 int rdma_create_qp (TYPE_5__*,int ,struct rdma_conn_param*) ;
 int rdma_destroy_id (TYPE_5__*) ;
 int rdma_destroy_qp (TYPE_5__*) ;
 int rdma_disconnect (TYPE_5__*) ;
 int send_immediate_work ;
 int smbd_destroy (struct TCP_Server_Info*) ;
 int smbd_disconnect_rdma_work ;
 int smbd_ia_open (struct smbd_connection*,struct sockaddr*,int) ;
 int smbd_keep_alive_interval ;
 int smbd_max_fragmented_recv_size ;
 int smbd_max_receive_size ;
 int smbd_max_send_size ;
 int smbd_negotiate (struct smbd_connection*) ;
 int smbd_post_send_credits ;
 int smbd_qp_async_error_upcall ;
 int smbd_receive_credit_max ;
 int smbd_recv_done_work ;
 int smbd_send_credit_target ;
 int spin_lock_init (int *) ;
 int stub1 (TYPE_4__*,int ,struct ib_port_immutable*) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static struct smbd_connection *_smbd_get_connection(
 struct TCP_Server_Info *server, struct sockaddr *dstaddr, int port)
{
 int rc;
 struct smbd_connection *info;
 struct rdma_conn_param conn_param;
 struct ib_qp_init_attr qp_attr;
 struct sockaddr_in *addr_in = (struct sockaddr_in *) dstaddr;
 struct ib_port_immutable port_immutable;
 u32 ird_ord_hdr[2];

 info = kzalloc(sizeof(struct smbd_connection), GFP_KERNEL);
 if (!info)
  return ((void*)0);

 info->transport_status = SMBD_CONNECTING;
 rc = smbd_ia_open(info, dstaddr, port);
 if (rc) {
  log_rdma_event(INFO, "smbd_ia_open rc=%d\n", rc);
  goto create_id_failed;
 }

 if (smbd_send_credit_target > info->id->device->attrs.max_cqe ||
     smbd_send_credit_target > info->id->device->attrs.max_qp_wr) {
  log_rdma_event(ERR,
   "consider lowering send_credit_target = %d. "
   "Possible CQE overrun, device "
   "reporting max_cpe %d max_qp_wr %d\n",
   smbd_send_credit_target,
   info->id->device->attrs.max_cqe,
   info->id->device->attrs.max_qp_wr);
  goto config_failed;
 }

 if (smbd_receive_credit_max > info->id->device->attrs.max_cqe ||
     smbd_receive_credit_max > info->id->device->attrs.max_qp_wr) {
  log_rdma_event(ERR,
   "consider lowering receive_credit_max = %d. "
   "Possible CQE overrun, device "
   "reporting max_cpe %d max_qp_wr %d\n",
   smbd_receive_credit_max,
   info->id->device->attrs.max_cqe,
   info->id->device->attrs.max_qp_wr);
  goto config_failed;
 }

 info->receive_credit_max = smbd_receive_credit_max;
 info->send_credit_target = smbd_send_credit_target;
 info->max_send_size = smbd_max_send_size;
 info->max_fragmented_recv_size = smbd_max_fragmented_recv_size;
 info->max_receive_size = smbd_max_receive_size;
 info->keep_alive_interval = smbd_keep_alive_interval;

 if (info->id->device->attrs.max_send_sge < SMBDIRECT_MAX_SGE) {
  log_rdma_event(ERR,
   "warning: device max_send_sge = %d too small\n",
   info->id->device->attrs.max_send_sge);
  log_rdma_event(ERR, "Queue Pair creation may fail\n");
 }
 if (info->id->device->attrs.max_recv_sge < SMBDIRECT_MAX_SGE) {
  log_rdma_event(ERR,
   "warning: device max_recv_sge = %d too small\n",
   info->id->device->attrs.max_recv_sge);
  log_rdma_event(ERR, "Queue Pair creation may fail\n");
 }

 info->send_cq = ((void*)0);
 info->recv_cq = ((void*)0);
 info->send_cq =
  ib_alloc_cq_any(info->id->device, info,
    info->send_credit_target, IB_POLL_SOFTIRQ);
 if (IS_ERR(info->send_cq)) {
  info->send_cq = ((void*)0);
  goto alloc_cq_failed;
 }

 info->recv_cq =
  ib_alloc_cq_any(info->id->device, info,
    info->receive_credit_max, IB_POLL_SOFTIRQ);
 if (IS_ERR(info->recv_cq)) {
  info->recv_cq = ((void*)0);
  goto alloc_cq_failed;
 }

 memset(&qp_attr, 0, sizeof(qp_attr));
 qp_attr.event_handler = smbd_qp_async_error_upcall;
 qp_attr.qp_context = info;
 qp_attr.cap.max_send_wr = info->send_credit_target;
 qp_attr.cap.max_recv_wr = info->receive_credit_max;
 qp_attr.cap.max_send_sge = SMBDIRECT_MAX_SGE;
 qp_attr.cap.max_recv_sge = SMBDIRECT_MAX_SGE;
 qp_attr.cap.max_inline_data = 0;
 qp_attr.sq_sig_type = IB_SIGNAL_REQ_WR;
 qp_attr.qp_type = IB_QPT_RC;
 qp_attr.send_cq = info->send_cq;
 qp_attr.recv_cq = info->recv_cq;
 qp_attr.port_num = ~0;

 rc = rdma_create_qp(info->id, info->pd, &qp_attr);
 if (rc) {
  log_rdma_event(ERR, "rdma_create_qp failed %i\n", rc);
  goto create_qp_failed;
 }

 memset(&conn_param, 0, sizeof(conn_param));
 conn_param.initiator_depth = 0;

 conn_param.responder_resources =
  info->id->device->attrs.max_qp_rd_atom
   < SMBD_CM_RESPONDER_RESOURCES ?
  info->id->device->attrs.max_qp_rd_atom :
  SMBD_CM_RESPONDER_RESOURCES;
 info->responder_resources = conn_param.responder_resources;
 log_rdma_mr(INFO, "responder_resources=%d\n",
  info->responder_resources);


 info->id->device->ops.get_port_immutable(
  info->id->device, info->id->port_num, &port_immutable);
 if (port_immutable.core_cap_flags & RDMA_CORE_PORT_IWARP) {
  ird_ord_hdr[0] = info->responder_resources;
  ird_ord_hdr[1] = 1;
  conn_param.private_data = ird_ord_hdr;
  conn_param.private_data_len = sizeof(ird_ord_hdr);
 } else {
  conn_param.private_data = ((void*)0);
  conn_param.private_data_len = 0;
 }

 conn_param.retry_count = SMBD_CM_RETRY;
 conn_param.rnr_retry_count = SMBD_CM_RNR_RETRY;
 conn_param.flow_control = 0;

 log_rdma_event(INFO, "connecting to IP %pI4 port %d\n",
  &addr_in->sin_addr, port);

 init_waitqueue_head(&info->conn_wait);
 init_waitqueue_head(&info->disconn_wait);
 init_waitqueue_head(&info->wait_reassembly_queue);
 rc = rdma_connect(info->id, &conn_param);
 if (rc) {
  log_rdma_event(ERR, "rdma_connect() failed with %i\n", rc);
  goto rdma_connect_failed;
 }

 wait_event_interruptible(
  info->conn_wait, info->transport_status != SMBD_CONNECTING);

 if (info->transport_status != SMBD_CONNECTED) {
  log_rdma_event(ERR, "rdma_connect failed port=%d\n", port);
  goto rdma_connect_failed;
 }

 log_rdma_event(INFO, "rdma_connect connected\n");

 rc = allocate_caches_and_workqueue(info);
 if (rc) {
  log_rdma_event(ERR, "cache allocation failed\n");
  goto allocate_cache_failed;
 }

 init_waitqueue_head(&info->wait_send_queue);
 INIT_DELAYED_WORK(&info->idle_timer_work, idle_connection_timer);
 INIT_DELAYED_WORK(&info->send_immediate_work, send_immediate_work);
 queue_delayed_work(info->workqueue, &info->idle_timer_work,
  info->keep_alive_interval*HZ);

 init_waitqueue_head(&info->wait_send_pending);
 atomic_set(&info->send_pending, 0);

 init_waitqueue_head(&info->wait_send_payload_pending);
 atomic_set(&info->send_payload_pending, 0);

 INIT_WORK(&info->disconnect_work, smbd_disconnect_rdma_work);
 INIT_WORK(&info->recv_done_work, smbd_recv_done_work);
 INIT_WORK(&info->post_send_credits_work, smbd_post_send_credits);
 info->new_credits_offered = 0;
 spin_lock_init(&info->lock_new_credits_offered);

 rc = smbd_negotiate(info);
 if (rc) {
  log_rdma_event(ERR, "smbd_negotiate rc=%d\n", rc);
  goto negotiation_failed;
 }

 rc = allocate_mr_list(info);
 if (rc) {
  log_rdma_mr(ERR, "memory registration allocation failed\n");
  goto allocate_mr_failed;
 }

 return info;

allocate_mr_failed:

 smbd_destroy(server);
 return ((void*)0);

negotiation_failed:
 cancel_delayed_work_sync(&info->idle_timer_work);
 destroy_caches_and_workqueue(info);
 info->transport_status = SMBD_NEGOTIATE_FAILED;
 init_waitqueue_head(&info->conn_wait);
 rdma_disconnect(info->id);
 wait_event(info->conn_wait,
  info->transport_status == SMBD_DISCONNECTED);

allocate_cache_failed:
rdma_connect_failed:
 rdma_destroy_qp(info->id);

create_qp_failed:
alloc_cq_failed:
 if (info->send_cq)
  ib_free_cq(info->send_cq);
 if (info->recv_cq)
  ib_free_cq(info->recv_cq);

config_failed:
 ib_dealloc_pd(info->pd);
 rdma_destroy_id(info->id);

create_id_failed:
 kfree(info);
 return ((void*)0);
}
