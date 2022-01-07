
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sk_buff {int dummy; } ;
struct nfcsim_link {int lock; void* mode; void* rf_tech; struct sk_buff* skb; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void nfcsim_link_set_skb(struct nfcsim_link *link, struct sk_buff *skb,
    u8 rf_tech, u8 mode)
{
 mutex_lock(&link->lock);

 dev_kfree_skb(link->skb);
 link->skb = skb;
 link->rf_tech = rf_tech;
 link->mode = mode;

 mutex_unlock(&link->lock);
}
