
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct nfcsim_link {scalar_t__ rf_tech; scalar_t__ mode; scalar_t__ cond; int lock; scalar_t__ shutdown; struct sk_buff* skb; int recv_wait; } ;


 int EINVAL ;
 int ENODEV ;
 struct sk_buff* ERR_PTR (int) ;
 int ETIMEDOUT ;
 int dev_kfree_skb (struct sk_buff*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_interruptible_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static struct sk_buff *nfcsim_link_recv_skb(struct nfcsim_link *link,
         int timeout, u8 rf_tech, u8 mode)
{
 int rc;
 struct sk_buff *skb;

 rc = wait_event_interruptible_timeout(link->recv_wait,
           link->cond,
           msecs_to_jiffies(timeout));

 mutex_lock(&link->lock);

 skb = link->skb;
 link->skb = ((void*)0);

 if (!rc) {
  rc = -ETIMEDOUT;
  goto done;
 }

 if (!skb || link->rf_tech != rf_tech || link->mode == mode) {
  rc = -EINVAL;
  goto done;
 }

 if (link->shutdown) {
  rc = -ENODEV;
  goto done;
 }

done:
 mutex_unlock(&link->lock);

 if (rc < 0) {
  dev_kfree_skb(skb);
  skb = ERR_PTR(rc);
 }

 link->cond = 0;

 return skb;
}
