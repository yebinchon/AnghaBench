
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvcalls_data {int out; } ;
struct sock_mapping {int irq; int write; int io; int sock; int ring_order; struct pvcalls_data data; struct pvcalls_data_intf* ring; } ;
struct pvcalls_data_intf {int out_cons; int out_prod; int out_error; } ;
struct msghdr {int msg_iter; int msg_flags; } ;
struct kvec {int iov_base; int iov_len; } ;
typedef int msg ;
typedef int RING_IDX ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int READ ;
 int XEN_FLEX_RING_SIZE (int ) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int inet_sendmsg (int ,struct msghdr*,int) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 int memset (struct msghdr*,int ,int) ;
 int notify_remote_via_irq (int ) ;
 int pvcalls_mask (int,int) ;
 int pvcalls_queued (int,int,int) ;
 int virt_mb () ;
 int virt_wmb () ;

__attribute__((used)) static void pvcalls_conn_back_write(struct sock_mapping *map)
{
 struct pvcalls_data_intf *intf = map->ring;
 struct pvcalls_data *data = &map->data;
 struct msghdr msg;
 struct kvec vec[2];
 RING_IDX cons, prod, size, array_size;
 int ret;

 cons = intf->out_cons;
 prod = intf->out_prod;

 virt_mb();

 array_size = XEN_FLEX_RING_SIZE(map->ring_order);
 size = pvcalls_queued(prod, cons, array_size);
 if (size == 0)
  return;

 memset(&msg, 0, sizeof(msg));
 msg.msg_flags |= MSG_DONTWAIT;
 if (pvcalls_mask(prod, array_size) > pvcalls_mask(cons, array_size)) {
  vec[0].iov_base = data->out + pvcalls_mask(cons, array_size);
  vec[0].iov_len = size;
  iov_iter_kvec(&msg.msg_iter, READ, vec, 1, size);
 } else {
  vec[0].iov_base = data->out + pvcalls_mask(cons, array_size);
  vec[0].iov_len = array_size - pvcalls_mask(cons, array_size);
  vec[1].iov_base = data->out;
  vec[1].iov_len = size - vec[0].iov_len;
  iov_iter_kvec(&msg.msg_iter, READ, vec, 2, size);
 }

 atomic_set(&map->write, 0);
 ret = inet_sendmsg(map->sock, &msg, size);
 if (ret == -EAGAIN || (ret >= 0 && ret < size)) {
  atomic_inc(&map->write);
  atomic_inc(&map->io);
 }
 if (ret == -EAGAIN)
  return;


 virt_wmb();
 if (ret < 0) {
  intf->out_error = ret;
 } else {
  intf->out_error = 0;
  intf->out_cons = cons + ret;
  prod = intf->out_prod;
 }

 virt_wmb();
 if (prod != cons + ret)
  atomic_inc(&map->write);
 notify_remote_via_irq(map->irq);
}
