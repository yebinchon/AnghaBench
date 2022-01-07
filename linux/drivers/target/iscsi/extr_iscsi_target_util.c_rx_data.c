
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {int dummy; } ;
struct iscsi_data_count {int iov_count; int data_length; int type; struct kvec* iov; } ;
struct iscsi_conn {int conn_ops; int sock; } ;


 int ISCSI_RX_DATA ;
 int iscsit_do_rx_data (struct iscsi_conn*,struct iscsi_data_count*) ;
 int memset (struct iscsi_data_count*,int ,int) ;

int rx_data(
 struct iscsi_conn *conn,
 struct kvec *iov,
 int iov_count,
 int data)
{
 struct iscsi_data_count c;

 if (!conn || !conn->sock || !conn->conn_ops)
  return -1;

 memset(&c, 0, sizeof(struct iscsi_data_count));
 c.iov = iov;
 c.iov_count = iov_count;
 c.data_length = data;
 c.type = ISCSI_RX_DATA;

 return iscsit_do_rx_data(conn, &c);
}
