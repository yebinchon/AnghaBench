
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u64 ;
typedef size_t u32 ;
typedef int u16 ;
struct sockaddr_in6 {int sin6_port; int * sin6_addr; } ;
struct TYPE_4__ {int * s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {int v6_addr; int v4_addr; } ;
struct qedi_endpoint {size_t iscsi_cid; scalar_t__ ip_type; size_t handle; int ip_addr_len; int * dst_addr; TYPE_2__ dst; int pmtu; int state; int tcp_ofld_wait; int ofld_wait; int p_doorbell; int fw_cid; void* dst_port; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int dbg_ctx; int cdev; struct qedi_endpoint** ep_tbl; int num_offloads; int ll2_mtu; int link_state; int flags; } ;
struct iscsi_path {size_t iscsi_cid; scalar_t__ ip_type; size_t handle; int ip_addr_len; int * dst_addr; TYPE_2__ dst; int pmtu; int state; int tcp_ofld_wait; int ofld_wait; int p_doorbell; int fw_cid; void* dst_port; struct qedi_ctx* qedi; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int path_req ;
struct TYPE_6__ {int (* acquire_conn ) (int ,size_t*,int *,int *) ;int (* release_conn ) (int ,size_t) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ENOMEM ;
 int ENXIO ;
 int EP_STATE_IDLE ;
 int EP_STATE_OFLDCONN_START ;
 struct iscsi_endpoint* ERR_PTR (int) ;
 size_t ISCSI_KEVENT_IF_DOWN ;
 size_t ISCSI_KEVENT_PATH_REQ ;
 size_t QEDI_CID_RESERVED ;
 int QEDI_ERR (int *,char*,...) ;
 int QEDI_INFO (int *,int ,char*,int *,void*) ;
 int QEDI_IN_OFFLINE ;
 int QEDI_IN_RECOVERY ;
 scalar_t__ QEDI_LINK_UP ;
 int QEDI_LOG_CONN ;
 int QEDI_WARN (int *,char*,...) ;
 scalar_t__ TCP_IPV4 ;
 scalar_t__ TCP_IPV6 ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int init_waitqueue_head (int *) ;
 struct iscsi_endpoint* iscsi_create_endpoint (int) ;
 int iscsi_destroy_endpoint (struct iscsi_endpoint*) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 int iscsi_offload_mesg (struct Scsi_Host*,int *,size_t,char*,int) ;
 int memcpy (int *,int **,int) ;
 int memset (struct qedi_endpoint*,int ,int) ;
 void* ntohs (int ) ;
 int qedi_alloc_sq (struct qedi_ctx*,struct qedi_endpoint*) ;
 scalar_t__ qedi_do_not_recover ;
 int qedi_free_sq (struct qedi_ctx*,struct qedi_endpoint*) ;
 int qedi_iscsi_transport ;
 TYPE_3__* qedi_ops ;
 int stub1 (int ,size_t*,int *,int *) ;
 int stub2 (int ,size_t) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct iscsi_endpoint *
qedi_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
  int non_blocking)
{
 struct qedi_ctx *qedi;
 struct iscsi_endpoint *ep;
 struct qedi_endpoint *qedi_ep;
 struct sockaddr_in *addr;
 struct sockaddr_in6 *addr6;
 struct iscsi_path path_req;
 u32 msg_type = ISCSI_KEVENT_IF_DOWN;
 u32 iscsi_cid = QEDI_CID_RESERVED;
 u16 len = 0;
 char *buf = ((void*)0);
 int ret, tmp;

 if (!shost) {
  ret = -ENXIO;
  QEDI_ERR(((void*)0), "shost is NULL\n");
  return ERR_PTR(ret);
 }

 if (qedi_do_not_recover) {
  ret = -ENOMEM;
  return ERR_PTR(ret);
 }

 qedi = iscsi_host_priv(shost);

 if (test_bit(QEDI_IN_OFFLINE, &qedi->flags) ||
     test_bit(QEDI_IN_RECOVERY, &qedi->flags)) {
  ret = -ENOMEM;
  return ERR_PTR(ret);
 }

 ep = iscsi_create_endpoint(sizeof(struct qedi_endpoint));
 if (!ep) {
  QEDI_ERR(&qedi->dbg_ctx, "endpoint create fail\n");
  ret = -ENOMEM;
  return ERR_PTR(ret);
 }
 qedi_ep = ep->dd_data;
 memset(qedi_ep, 0, sizeof(struct qedi_endpoint));
 qedi_ep->state = EP_STATE_IDLE;
 qedi_ep->iscsi_cid = (u32)-1;
 qedi_ep->qedi = qedi;

 if (dst_addr->sa_family == AF_INET) {
  addr = (struct sockaddr_in *)dst_addr;
  memcpy(qedi_ep->dst_addr, &addr->sin_addr.s_addr,
         sizeof(struct in_addr));
  qedi_ep->dst_port = ntohs(addr->sin_port);
  qedi_ep->ip_type = TCP_IPV4;
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
     "dst_addr=%pI4, dst_port=%u\n",
     qedi_ep->dst_addr, qedi_ep->dst_port);
 } else if (dst_addr->sa_family == AF_INET6) {
  addr6 = (struct sockaddr_in6 *)dst_addr;
  memcpy(qedi_ep->dst_addr, &addr6->sin6_addr,
         sizeof(struct in6_addr));
  qedi_ep->dst_port = ntohs(addr6->sin6_port);
  qedi_ep->ip_type = TCP_IPV6;
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
     "dst_addr=%pI6, dst_port=%u\n",
     qedi_ep->dst_addr, qedi_ep->dst_port);
 } else {
  QEDI_ERR(&qedi->dbg_ctx, "Invalid endpoint\n");
 }

 if (atomic_read(&qedi->link_state) != QEDI_LINK_UP) {
  QEDI_WARN(&qedi->dbg_ctx, "qedi link down\n");
  ret = -ENXIO;
  goto ep_conn_exit;
 }

 ret = qedi_alloc_sq(qedi, qedi_ep);
 if (ret)
  goto ep_conn_exit;

 ret = qedi_ops->acquire_conn(qedi->cdev, &qedi_ep->handle,
         &qedi_ep->fw_cid, &qedi_ep->p_doorbell);

 if (ret) {
  QEDI_ERR(&qedi->dbg_ctx, "Could not acquire connection\n");
  ret = -ENXIO;
  goto ep_free_sq;
 }

 iscsi_cid = qedi_ep->handle;
 qedi_ep->iscsi_cid = iscsi_cid;

 init_waitqueue_head(&qedi_ep->ofld_wait);
 init_waitqueue_head(&qedi_ep->tcp_ofld_wait);
 qedi_ep->state = EP_STATE_OFLDCONN_START;
 qedi->ep_tbl[iscsi_cid] = qedi_ep;

 buf = (char *)&path_req;
 len = sizeof(path_req);
 memset(&path_req, 0, len);

 msg_type = ISCSI_KEVENT_PATH_REQ;
 path_req.handle = (u64)qedi_ep->iscsi_cid;
 path_req.pmtu = qedi->ll2_mtu;
 qedi_ep->pmtu = qedi->ll2_mtu;
 if (qedi_ep->ip_type == TCP_IPV4) {
  memcpy(&path_req.dst.v4_addr, &qedi_ep->dst_addr,
         sizeof(struct in_addr));
  path_req.ip_addr_len = 4;
 } else {
  memcpy(&path_req.dst.v6_addr, &qedi_ep->dst_addr,
         sizeof(struct in6_addr));
  path_req.ip_addr_len = 16;
 }

 ret = iscsi_offload_mesg(shost, &qedi_iscsi_transport, msg_type, buf,
     len);
 if (ret) {
  QEDI_ERR(&qedi->dbg_ctx,
    "iscsi_offload_mesg() failed for cid=0x%x ret=%d\n",
    iscsi_cid, ret);
  goto ep_rel_conn;
 }

 atomic_inc(&qedi->num_offloads);
 return ep;

ep_rel_conn:
 qedi->ep_tbl[iscsi_cid] = ((void*)0);
 tmp = qedi_ops->release_conn(qedi->cdev, qedi_ep->handle);
 if (tmp)
  QEDI_WARN(&qedi->dbg_ctx, "release_conn returned %d\n",
     tmp);
ep_free_sq:
 qedi_free_sq(qedi, qedi_ep);
ep_conn_exit:
 iscsi_destroy_endpoint(ep);
 return ERR_PTR(ret);
}
