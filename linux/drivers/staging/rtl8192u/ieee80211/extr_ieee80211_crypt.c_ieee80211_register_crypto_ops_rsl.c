
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_crypto_ops {int name; } ;
struct ieee80211_crypto_alg {int list; struct ieee80211_crypto_ops* ops; } ;
struct TYPE_2__ {int lock; int algs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* hcrypt ;
 struct ieee80211_crypto_alg* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ieee80211_register_crypto_ops(struct ieee80211_crypto_ops *ops)
{
 unsigned long flags;
 struct ieee80211_crypto_alg *alg;

 if (!hcrypt)
  return -1;

 alg = kzalloc(sizeof(*alg), GFP_KERNEL);
 if (!alg)
  return -ENOMEM;

 alg->ops = ops;

 spin_lock_irqsave(&hcrypt->lock, flags);
 list_add(&alg->list, &hcrypt->algs);
 spin_unlock_irqrestore(&hcrypt->lock, flags);

 pr_debug("ieee80211_crypt: registered algorithm '%s'\n",
        ops->name);

 return 0;
}
