
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int in_mutex; int irq; int data; int ring; int inflight_conn_req; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct msghdr {int msg_iter; } ;


 int EAGAIN ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct sock_mapping*) ;
 int MSG_CMSG_CLOEXEC ;
 int MSG_DONTWAIT ;
 int MSG_ERRQUEUE ;
 int MSG_OOB ;
 int MSG_TRUNC ;
 int PTR_ERR (struct sock_mapping*) ;
 int PVCALLS_RING_ORDER ;
 size_t XEN_FLEX_RING_SIZE (int ) ;
 int __read_ring (int ,int *,int *,size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_remote_via_irq (int ) ;
 struct sock_mapping* pvcalls_enter_sock (struct socket*) ;
 int pvcalls_exit_sock (struct socket*) ;
 int pvcalls_front_read_todo (struct sock_mapping*) ;
 int wait_event_interruptible (int ,int ) ;

int pvcalls_front_recvmsg(struct socket *sock, struct msghdr *msg, size_t len,
       int flags)
{
 int ret;
 struct sock_mapping *map;

 if (flags & (MSG_CMSG_CLOEXEC|MSG_ERRQUEUE|MSG_OOB|MSG_TRUNC))
  return -EOPNOTSUPP;

 map = pvcalls_enter_sock(sock);
 if (IS_ERR(map))
  return PTR_ERR(map);

 mutex_lock(&map->active.in_mutex);
 if (len > XEN_FLEX_RING_SIZE(PVCALLS_RING_ORDER))
  len = XEN_FLEX_RING_SIZE(PVCALLS_RING_ORDER);

 while (!(flags & MSG_DONTWAIT) && !pvcalls_front_read_todo(map)) {
  wait_event_interruptible(map->active.inflight_conn_req,
      pvcalls_front_read_todo(map));
 }
 ret = __read_ring(map->active.ring, &map->active.data,
     &msg->msg_iter, len, flags);

 if (ret > 0)
  notify_remote_via_irq(map->active.irq);
 if (ret == 0)
  ret = (flags & MSG_DONTWAIT) ? -EAGAIN : 0;
 if (ret == -ENOTCONN)
  ret = 0;

 mutex_unlock(&map->active.in_mutex);
 pvcalls_exit_sock(sock);
 return ret;
}
