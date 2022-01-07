
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {struct list_head* next; } ;
struct ieee80211_crypto_ops {int name; } ;
struct ieee80211_crypto_alg {struct ieee80211_crypto_ops* ops; } ;
struct TYPE_2__ {int lock; struct list_head algs; } ;


 TYPE_1__* hcrypt ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strcmp (int ,char const*) ;

struct ieee80211_crypto_ops *ieee80211_get_crypto_ops(const char *name)
{
 unsigned long flags;
 struct list_head *ptr;
 struct ieee80211_crypto_alg *found_alg = ((void*)0);

 if (!hcrypt)
  return ((void*)0);

 spin_lock_irqsave(&hcrypt->lock, flags);
 for (ptr = hcrypt->algs.next; ptr != &hcrypt->algs; ptr = ptr->next) {
  struct ieee80211_crypto_alg *alg =
   (struct ieee80211_crypto_alg *)ptr;
  if (strcmp(alg->ops->name, name) == 0) {
   found_alg = alg;
   break;
  }
 }
 spin_unlock_irqrestore(&hcrypt->lock, flags);

 if (found_alg)
  return found_alg->ops;
 return ((void*)0);
}
