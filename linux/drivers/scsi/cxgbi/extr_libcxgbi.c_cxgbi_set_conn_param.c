
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_tcp_conn {struct cxgbi_conn* dd_data; } ;
struct iscsi_conn {int datadgst_en; int hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct cxgbi_sock {int tid; TYPE_2__* cdev; } ;
struct cxgbi_conn {TYPE_1__* cep; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_4__ {int (* csk_ddp_setup_digest ) (struct cxgbi_sock*,int ,int ,int ) ;} ;
struct TYPE_3__ {struct cxgbi_sock* csk; } ;


 int CXGBI_DBG_ISCSI ;





 int cxgbi_conn_max_recv_dlength (struct iscsi_conn*) ;
 int cxgbi_conn_max_xmit_dlength (struct iscsi_conn*) ;
 int iscsi_set_param (struct iscsi_cls_conn*,int,char*,int) ;
 int iscsi_tcp_set_max_r2t (struct iscsi_conn*,char*) ;
 int log_debug (int,char*,struct iscsi_cls_conn*,int,int,char*) ;
 int stub1 (struct cxgbi_sock*,int ,int ,int ) ;
 int stub2 (struct cxgbi_sock*,int ,int ,int ) ;

int cxgbi_set_conn_param(struct iscsi_cls_conn *cls_conn,
   enum iscsi_param param, char *buf, int buflen)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct cxgbi_conn *cconn = tcp_conn->dd_data;
 struct cxgbi_sock *csk = cconn->cep->csk;
 int err;

 log_debug(1 << CXGBI_DBG_ISCSI,
  "cls_conn 0x%p, param %d, buf(%d) %s.\n",
  cls_conn, param, buflen, buf);

 switch (param) {
 case 131:
  err = iscsi_set_param(cls_conn, param, buf, buflen);
  if (!err && conn->hdrdgst_en)
   err = csk->cdev->csk_ddp_setup_digest(csk, csk->tid,
       conn->hdrdgst_en,
       conn->datadgst_en);
  break;
 case 132:
  err = iscsi_set_param(cls_conn, param, buf, buflen);
  if (!err && conn->datadgst_en)
   err = csk->cdev->csk_ddp_setup_digest(csk, csk->tid,
       conn->hdrdgst_en,
       conn->datadgst_en);
  break;
 case 130:
  return iscsi_tcp_set_max_r2t(conn, buf);
 case 129:
  err = iscsi_set_param(cls_conn, param, buf, buflen);
  if (!err)
   err = cxgbi_conn_max_recv_dlength(conn);
  break;
 case 128:
  err = iscsi_set_param(cls_conn, param, buf, buflen);
  if (!err)
   err = cxgbi_conn_max_xmit_dlength(conn);
  break;
 default:
  return iscsi_set_param(cls_conn, param, buf, buflen);
 }
 return err;
}
