
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vhost_iotlb_msg {scalar_t__ type; } ;
struct TYPE_4__ {struct vhost_iotlb_msg iotlb; } ;
struct TYPE_3__ {int type; struct vhost_iotlb_msg iotlb; } ;
struct vhost_msg_node {TYPE_2__ msg_v2; TYPE_1__ msg; } ;
struct vhost_msg {int dummy; } ;
struct vhost_dev {int pending_list; int wait; int iotlb; int read_list; } ;
struct iov_iter {int dummy; } ;
typedef unsigned int ssize_t ;


 int BUG () ;
 int DEFINE_WAIT (int ) ;
 unsigned int EAGAIN ;
 unsigned int EBADFD ;
 unsigned int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ VHOST_IOTLB_MISS ;


 unsigned int copy_to_iter (void*,unsigned int,struct iov_iter*) ;
 int current ;
 int finish_wait (int *,int *) ;
 unsigned int iov_iter_count (struct iov_iter*) ;
 int kfree (struct vhost_msg_node*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 struct vhost_msg_node* vhost_dequeue_msg (struct vhost_dev*,int *) ;
 int vhost_enqueue_msg (struct vhost_dev*,int *,struct vhost_msg_node*) ;
 int wait ;

ssize_t vhost_chr_read_iter(struct vhost_dev *dev, struct iov_iter *to,
       int noblock)
{
 DEFINE_WAIT(wait);
 struct vhost_msg_node *node;
 ssize_t ret = 0;
 unsigned size = sizeof(struct vhost_msg);

 if (iov_iter_count(to) < size)
  return 0;

 while (1) {
  if (!noblock)
   prepare_to_wait(&dev->wait, &wait,
     TASK_INTERRUPTIBLE);

  node = vhost_dequeue_msg(dev, &dev->read_list);
  if (node)
   break;
  if (noblock) {
   ret = -EAGAIN;
   break;
  }
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
  if (!dev->iotlb) {
   ret = -EBADFD;
   break;
  }

  schedule();
 }

 if (!noblock)
  finish_wait(&dev->wait, &wait);

 if (node) {
  struct vhost_iotlb_msg *msg;
  void *start = &node->msg;

  switch (node->msg.type) {
  case 129:
   size = sizeof(node->msg);
   msg = &node->msg.iotlb;
   break;
  case 128:
   size = sizeof(node->msg_v2);
   msg = &node->msg_v2.iotlb;
   break;
  default:
   BUG();
   break;
  }

  ret = copy_to_iter(start, size, to);
  if (ret != size || msg->type != VHOST_IOTLB_MISS) {
   kfree(node);
   return ret;
  }
  vhost_enqueue_msg(dev, &dev->pending_list, node);
 }

 return ret;
}
