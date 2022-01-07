
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_local {size_t out_idx; struct sk_buff** skbs; int sk_count; } ;
struct TYPE_3__ {struct net_local* netif; } ;
typedef TYPE_1__ hysdn_card ;



struct sk_buff *
hysdn_tx_netget(hysdn_card *card)
{
 struct net_local *lp = card->netif;

 if (!lp)
  return (((void*)0));

 if (!lp->sk_count)
  return (((void*)0));

 return (lp->skbs[lp->out_idx]);
}
