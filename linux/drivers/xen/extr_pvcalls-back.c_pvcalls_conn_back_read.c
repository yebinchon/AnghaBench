
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pvcalls_data {scalar_t__ in; } ;
struct sock_mapping {int irq; int read; TYPE_3__* sock; int ring_order; struct pvcalls_data data; struct pvcalls_data_intf* ring; } ;
struct pvcalls_data_intf {scalar_t__ in_cons; scalar_t__ in_prod; int in_error; } ;
struct msghdr {int msg_iter; } ;
struct kvec {scalar_t__ iov_base; scalar_t__ iov_len; } ;
typedef int msg ;
typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {TYPE_2__ sk_receive_queue; } ;
typedef scalar_t__ RING_IDX ;


 int EAGAIN ;
 int ENOTCONN ;
 int MSG_DONTWAIT ;
 int WARN_ON (int) ;
 int WRITE ;
 scalar_t__ XEN_FLEX_RING_SIZE (int ) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int inet_recvmsg (TYPE_3__*,struct msghdr*,scalar_t__,int ) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,scalar_t__) ;
 int memset (struct msghdr*,int ,int) ;
 int notify_remote_via_irq (int ) ;
 scalar_t__ pvcalls_mask (scalar_t__,scalar_t__) ;
 scalar_t__ pvcalls_queued (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ skb_queue_empty (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virt_mb () ;
 int virt_wmb () ;

__attribute__((used)) static void pvcalls_conn_back_read(void *opaque)
{
 struct sock_mapping *map = (struct sock_mapping *)opaque;
 struct msghdr msg;
 struct kvec vec[2];
 RING_IDX cons, prod, size, wanted, array_size, masked_prod, masked_cons;
 int32_t error;
 struct pvcalls_data_intf *intf = map->ring;
 struct pvcalls_data *data = &map->data;
 unsigned long flags;
 int ret;

 array_size = XEN_FLEX_RING_SIZE(map->ring_order);
 cons = intf->in_cons;
 prod = intf->in_prod;
 error = intf->in_error;

 virt_mb();

 if (error)
  return;

 size = pvcalls_queued(prod, cons, array_size);
 if (size >= array_size)
  return;
 spin_lock_irqsave(&map->sock->sk->sk_receive_queue.lock, flags);
 if (skb_queue_empty(&map->sock->sk->sk_receive_queue)) {
  atomic_set(&map->read, 0);
  spin_unlock_irqrestore(&map->sock->sk->sk_receive_queue.lock,
    flags);
  return;
 }
 spin_unlock_irqrestore(&map->sock->sk->sk_receive_queue.lock, flags);
 wanted = array_size - size;
 masked_prod = pvcalls_mask(prod, array_size);
 masked_cons = pvcalls_mask(cons, array_size);

 memset(&msg, 0, sizeof(msg));
 if (masked_prod < masked_cons) {
  vec[0].iov_base = data->in + masked_prod;
  vec[0].iov_len = wanted;
  iov_iter_kvec(&msg.msg_iter, WRITE, vec, 1, wanted);
 } else {
  vec[0].iov_base = data->in + masked_prod;
  vec[0].iov_len = array_size - masked_prod;
  vec[1].iov_base = data->in;
  vec[1].iov_len = wanted - vec[0].iov_len;
  iov_iter_kvec(&msg.msg_iter, WRITE, vec, 2, wanted);
 }

 atomic_set(&map->read, 0);
 ret = inet_recvmsg(map->sock, &msg, wanted, MSG_DONTWAIT);
 WARN_ON(ret > wanted);
 if (ret == -EAGAIN)
  return;
 if (!ret)
  ret = -ENOTCONN;
 spin_lock_irqsave(&map->sock->sk->sk_receive_queue.lock, flags);
 if (ret > 0 && !skb_queue_empty(&map->sock->sk->sk_receive_queue))
  atomic_inc(&map->read);
 spin_unlock_irqrestore(&map->sock->sk->sk_receive_queue.lock, flags);


 virt_wmb();
 if (ret < 0) {
  atomic_set(&map->read, 0);
  intf->in_error = ret;
 } else
  intf->in_prod = prod + ret;

 virt_wmb();
 notify_remote_via_irq(map->irq);

 return;
}
