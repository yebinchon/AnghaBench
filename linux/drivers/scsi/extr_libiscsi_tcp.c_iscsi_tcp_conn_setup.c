
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_tcp_conn {struct iscsi_tcp_conn* dd_data; struct iscsi_conn* iscsi_conn; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; int max_recv_dlength; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int,int ) ;

struct iscsi_cls_conn *
iscsi_tcp_conn_setup(struct iscsi_cls_session *cls_session, int dd_data_size,
        uint32_t conn_idx)

{
 struct iscsi_conn *conn;
 struct iscsi_cls_conn *cls_conn;
 struct iscsi_tcp_conn *tcp_conn;

 cls_conn = iscsi_conn_setup(cls_session,
        sizeof(*tcp_conn) + dd_data_size, conn_idx);
 if (!cls_conn)
  return ((void*)0);
 conn = cls_conn->dd_data;




 conn->max_recv_dlength = ISCSI_DEF_MAX_RECV_SEG_LEN;

 tcp_conn = conn->dd_data;
 tcp_conn->iscsi_conn = conn;
 tcp_conn->dd_data = conn->dd_data + sizeof(*tcp_conn);
 return cls_conn;
}
