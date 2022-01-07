
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct ieee80211_crypto_ops {int name; } ;
struct ieee80211_crypto_alg {int list; struct ieee80211_crypto_ops* ops; } ;
struct TYPE_2__ {int lock; struct list_head algs; } ;


 TYPE_1__* hcrypt ;
 int kfree (struct ieee80211_crypto_alg*) ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ieee80211_unregister_crypto_ops(struct ieee80211_crypto_ops *ops)
{
 unsigned long flags;
 struct list_head *ptr;
 struct ieee80211_crypto_alg *del_alg = ((void*)0);

 if (!hcrypt)
  return -1;

 spin_lock_irqsave(&hcrypt->lock, flags);
 for (ptr = hcrypt->algs.next; ptr != &hcrypt->algs; ptr = ptr->next) {
  struct ieee80211_crypto_alg *alg =
   (struct ieee80211_crypto_alg *)ptr;
  if (alg->ops == ops) {
   list_del(&alg->list);
   del_alg = alg;
   break;
  }
 }
 spin_unlock_irqrestore(&hcrypt->lock, flags);

 if (del_alg) {
  pr_debug("ieee80211_crypt: unregistered algorithm '%s'\n",
    ops->name);
  kfree(del_alg);
 }

 return del_alg ? 0 : -1;
}
