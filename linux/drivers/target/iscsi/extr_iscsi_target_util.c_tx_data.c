
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iter; } ;
struct kvec {int dummy; } ;
struct iscsi_conn {int sock; int conn_ops; } ;


 int WRITE ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 int memset (struct msghdr*,int ,int) ;
 scalar_t__ msg_data_left (struct msghdr*) ;
 int pr_debug (char*,int,int,...) ;
 int pr_err (char*,int) ;
 int sock_sendmsg (int ,struct msghdr*) ;

int tx_data(
 struct iscsi_conn *conn,
 struct kvec *iov,
 int iov_count,
 int data)
{
 struct msghdr msg;
 int total_tx = 0;

 if (!conn || !conn->sock || !conn->conn_ops)
  return -1;

 if (data <= 0) {
  pr_err("Data length is: %d\n", data);
  return -1;
 }

 memset(&msg, 0, sizeof(struct msghdr));

 iov_iter_kvec(&msg.msg_iter, WRITE, iov, iov_count, data);

 while (msg_data_left(&msg)) {
  int tx_loop = sock_sendmsg(conn->sock, &msg);
  if (tx_loop <= 0) {
   pr_debug("tx_loop: %d total_tx %d\n",
    tx_loop, total_tx);
   return tx_loop;
  }
  total_tx += tx_loop;
  pr_debug("tx_loop: %d, total_tx: %d, data: %d\n",
     tx_loop, total_tx, data);
 }

 return total_tx;
}
