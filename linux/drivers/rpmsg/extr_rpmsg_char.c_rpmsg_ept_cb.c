
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rpmsg_eptdev {int readq; int queue_lock; int queue; } ;
struct rpmsg_device {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int skb_put_data (struct sk_buff*,void*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int rpmsg_ept_cb(struct rpmsg_device *rpdev, void *buf, int len,
   void *priv, u32 addr)
{
 struct rpmsg_eptdev *eptdev = priv;
 struct sk_buff *skb;

 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;

 skb_put_data(skb, buf, len);

 spin_lock(&eptdev->queue_lock);
 skb_queue_tail(&eptdev->queue, skb);
 spin_unlock(&eptdev->queue_lock);


 wake_up_interruptible(&eptdev->readq);

 return 0;
}
