
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qedi_endpoint {scalar_t__ state; int fw_cid; int iscsi_cid; struct qedi_conn* conn; } ;
struct qedi_ctx {int dummy; } ;
struct qedi_conn {int wait_queue; int tmf_work_list; int tmf_work_lock; scalar_t__ cmd_cleanup_cmpl; scalar_t__ cmd_cleanup_req; int fw_cid; int iscsi_conn_id; struct qedi_endpoint* ep; } ;
struct iscsi_endpoint {struct qedi_endpoint* dd_data; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 scalar_t__ EP_STATE_TCP_FIN_RCVD ;
 scalar_t__ EP_STATE_TCP_RST_RCVD ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ iscsi_conn_bind (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ;
 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (int ) ;
 struct Scsi_Host* iscsi_session_to_shost (struct iscsi_cls_session*) ;
 scalar_t__ qedi_bind_conn_to_iscsi_cid (struct qedi_ctx*,struct qedi_conn*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int qedi_conn_bind(struct iscsi_cls_session *cls_session,
     struct iscsi_cls_conn *cls_conn,
     u64 transport_fd, int is_leading)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct qedi_conn *qedi_conn = conn->dd_data;
 struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 struct qedi_ctx *qedi = iscsi_host_priv(shost);
 struct qedi_endpoint *qedi_ep;
 struct iscsi_endpoint *ep;

 ep = iscsi_lookup_endpoint(transport_fd);
 if (!ep)
  return -EINVAL;

 qedi_ep = ep->dd_data;
 if ((qedi_ep->state == EP_STATE_TCP_FIN_RCVD) ||
     (qedi_ep->state == EP_STATE_TCP_RST_RCVD))
  return -EINVAL;

 if (iscsi_conn_bind(cls_session, cls_conn, is_leading))
  return -EINVAL;

 qedi_ep->conn = qedi_conn;
 qedi_conn->ep = qedi_ep;
 qedi_conn->iscsi_conn_id = qedi_ep->iscsi_cid;
 qedi_conn->fw_cid = qedi_ep->fw_cid;
 qedi_conn->cmd_cleanup_req = 0;
 qedi_conn->cmd_cleanup_cmpl = 0;

 if (qedi_bind_conn_to_iscsi_cid(qedi, qedi_conn))
  return -EINVAL;

 spin_lock_init(&qedi_conn->tmf_work_lock);
 INIT_LIST_HEAD(&qedi_conn->tmf_work_list);
 init_waitqueue_head(&qedi_conn->wait_queue);
 return 0;
}
