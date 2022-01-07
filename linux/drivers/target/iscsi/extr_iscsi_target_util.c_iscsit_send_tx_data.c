
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvec {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int tx_size; int iov_misc_count; struct kvec* iov_misc; int iov_data_count; struct kvec* iov_data; } ;


 int EAGAIN ;
 int pr_err (char*) ;
 int tx_data (struct iscsi_conn*,struct kvec*,int ,int) ;

int iscsit_send_tx_data(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn,
 int use_misc)
{
 int tx_sent, tx_size;
 u32 iov_count;
 struct kvec *iov;

send_data:
 tx_size = cmd->tx_size;

 if (!use_misc) {
  iov = &cmd->iov_data[0];
  iov_count = cmd->iov_data_count;
 } else {
  iov = &cmd->iov_misc[0];
  iov_count = cmd->iov_misc_count;
 }

 tx_sent = tx_data(conn, &iov[0], iov_count, tx_size);
 if (tx_size != tx_sent) {
  if (tx_sent == -EAGAIN) {
   pr_err("tx_data() returned -EAGAIN\n");
   goto send_data;
  } else
   return -1;
 }
 cmd->tx_size = 0;

 return 0;
}
