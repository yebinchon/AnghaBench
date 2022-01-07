
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iter; } ;
struct iscsi_data_count {int data_length; int iov_count; int iov; } ;
struct iscsi_conn {int sock; int conn_ops; } ;


 int MSG_WAITALL ;
 int READ ;
 int iov_iter_kvec (int *,int ,int ,int ,int) ;
 int memset (struct msghdr*,int ,int) ;
 scalar_t__ msg_data_left (struct msghdr*) ;
 int pr_debug (char*,int,int,...) ;
 int sock_recvmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static int iscsit_do_rx_data(
 struct iscsi_conn *conn,
 struct iscsi_data_count *count)
{
 int data = count->data_length, rx_loop = 0, total_rx = 0;
 struct msghdr msg;

 if (!conn || !conn->sock || !conn->conn_ops)
  return -1;

 memset(&msg, 0, sizeof(struct msghdr));
 iov_iter_kvec(&msg.msg_iter, READ, count->iov, count->iov_count, data);

 while (msg_data_left(&msg)) {
  rx_loop = sock_recvmsg(conn->sock, &msg, MSG_WAITALL);
  if (rx_loop <= 0) {
   pr_debug("rx_loop: %d total_rx: %d\n",
    rx_loop, total_rx);
   return rx_loop;
  }
  total_rx += rx_loop;
  pr_debug("rx_loop: %d, total_rx: %d, data: %d\n",
    rx_loop, total_rx, data);
 }

 return total_rx;
}
