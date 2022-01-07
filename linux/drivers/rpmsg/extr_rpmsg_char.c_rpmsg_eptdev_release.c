
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
struct rpmsg_eptdev {int queue; int ept_lock; int * ept; struct device dev; } ;
struct inode {int i_cdev; } ;
struct file {int dummy; } ;


 struct rpmsg_eptdev* cdev_to_eptdev (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int rpmsg_destroy_ept (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static int rpmsg_eptdev_release(struct inode *inode, struct file *filp)
{
 struct rpmsg_eptdev *eptdev = cdev_to_eptdev(inode->i_cdev);
 struct device *dev = &eptdev->dev;
 struct sk_buff *skb;


 mutex_lock(&eptdev->ept_lock);
 if (eptdev->ept) {
  rpmsg_destroy_ept(eptdev->ept);
  eptdev->ept = ((void*)0);
 }
 mutex_unlock(&eptdev->ept_lock);


 while (!skb_queue_empty(&eptdev->queue)) {
  skb = skb_dequeue(&eptdev->queue);
  kfree_skb(skb);
 }

 put_device(dev);

 return 0;
}
