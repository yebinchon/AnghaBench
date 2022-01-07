
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_msg_node {int node; } ;
struct vhost_dev {int wait; int iotlb_lock; } ;
struct list_head {int dummy; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible_poll (int *,int) ;

void vhost_enqueue_msg(struct vhost_dev *dev, struct list_head *head,
         struct vhost_msg_node *node)
{
 spin_lock(&dev->iotlb_lock);
 list_add_tail(&node->node, head);
 spin_unlock(&dev->iotlb_lock);

 wake_up_interruptible_poll(&dev->wait, EPOLLIN | EPOLLRDNORM);
}
