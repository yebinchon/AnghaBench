
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_tcp_conn {struct cxgbi_conn* dd_data; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct cxgbi_conn {struct iscsi_conn* iconn; } ;


 int CXGBI_DBG_ISCSI ;
 struct iscsi_cls_conn* iscsi_tcp_conn_setup (struct iscsi_cls_session*,int,int ) ;
 int log_debug (int,char*,int ,int ,struct iscsi_cls_session*,struct iscsi_cls_conn*,struct iscsi_conn*,struct iscsi_tcp_conn*,struct cxgbi_conn*) ;

struct iscsi_cls_conn *
cxgbi_create_conn(struct iscsi_cls_session *cls_session, u32 cid)
{
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_conn *conn;
 struct iscsi_tcp_conn *tcp_conn;
 struct cxgbi_conn *cconn;

 cls_conn = iscsi_tcp_conn_setup(cls_session, sizeof(*cconn), cid);
 if (!cls_conn)
  return ((void*)0);

 conn = cls_conn->dd_data;
 tcp_conn = conn->dd_data;
 cconn = tcp_conn->dd_data;
 cconn->iconn = conn;

 log_debug(1 << CXGBI_DBG_ISCSI,
  "cid %u(0x%x), cls 0x%p,0x%p, conn 0x%p,0x%p,0x%p.\n",
  cid, cid, cls_session, cls_conn, conn, tcp_conn, cconn);

 return cls_conn;
}
