
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct msghdr {int msg_iter; int msg_flags; } ;
struct kvec {void* iov_base; int iov_len; } ;
struct TYPE_4__ {int comm; } ;
struct TYPE_3__ {int sk_allocation; } ;


 int EINVAL ;
 int GFP_NOIO ;
 int MSG_NOSIGNAL ;
 int MSG_WAITALL ;
 int READ ;
 TYPE_2__* current ;
 int in_interrupt () ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 scalar_t__ msg_data_left (struct msghdr*) ;
 int pr_debug (char*,...) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int ) ;
 scalar_t__ usbip_dbg_flag_xmit ;
 int usbip_dbg_xmit (char*) ;
 int usbip_dump_buffer (void*,int) ;

int usbip_recv(struct socket *sock, void *buf, int size)
{
 int result;
 struct kvec iov = {.iov_base = buf, .iov_len = size};
 struct msghdr msg = {.msg_flags = MSG_NOSIGNAL};
 int total = 0;

 if (!sock || !buf || !size)
  return -EINVAL;

 iov_iter_kvec(&msg.msg_iter, READ, &iov, 1, size);

 usbip_dbg_xmit("enter\n");

 do {
  sock->sk->sk_allocation = GFP_NOIO;

  result = sock_recvmsg(sock, &msg, MSG_WAITALL);
  if (result <= 0)
   goto err;

  total += result;
 } while (msg_data_left(&msg));

 if (usbip_dbg_flag_xmit) {
  if (!in_interrupt())
   pr_debug("%-10s:", current->comm);
  else
   pr_debug("interrupt  :");

  pr_debug("receiving....\n");
  usbip_dump_buffer(buf, size);
  pr_debug("received, osize %d ret %d size %zd total %d\n",
    size, result, msg_data_left(&msg), total);
 }

 return total;

err:
 return result;
}
