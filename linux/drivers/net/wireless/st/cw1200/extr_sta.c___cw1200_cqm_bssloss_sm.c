
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cw1200_common {int bss_loss_state; int hw; TYPE_1__* vif; int bss_loss_work; int bss_params_work; int workqueue; int tx_lock; scalar_t__ delayed_unjoin; scalar_t__ delayed_link_loss; } ;
struct TYPE_2__ {int p2p; } ;


 int HZ ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cw1200_bssloss_mitigation ;
 int cw1200_tx (int ,int *,struct sk_buff*) ;
 struct sk_buff* ieee80211_nullfunc_get (int ,TYPE_1__*,int) ;
 int pr_debug (char*,int,int,int,int,int ,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;
 int queue_work (int ,int *) ;

void __cw1200_cqm_bssloss_sm(struct cw1200_common *priv,
        int init, int good, int bad)
{
 int tx = 0;

 priv->delayed_link_loss = 0;
 cancel_work_sync(&priv->bss_params_work);

 pr_debug("[STA] CQM BSSLOSS_SM: state: %d init %d good %d bad: %d txlock: %d uj: %d\n",
   priv->bss_loss_state,
   init, good, bad,
   atomic_read(&priv->tx_lock),
   priv->delayed_unjoin);


 if (priv->delayed_unjoin)
  return;

 if (init) {
  queue_delayed_work(priv->workqueue,
       &priv->bss_loss_work,
       HZ);
  priv->bss_loss_state = 0;


  if (!priv->vif->p2p && !atomic_read(&priv->tx_lock))
   tx = 1;
 } else if (good) {
  cancel_delayed_work_sync(&priv->bss_loss_work);
  priv->bss_loss_state = 0;
  queue_work(priv->workqueue, &priv->bss_params_work);
 } else if (bad) {

  if (priv->bss_loss_state < 3)
   tx = 1;
 } else {
  cancel_delayed_work_sync(&priv->bss_loss_work);
  priv->bss_loss_state = 0;
 }


 if (!cw1200_bssloss_mitigation)
  tx = 0;


 if (tx) {
  struct sk_buff *skb;

  priv->bss_loss_state++;

  skb = ieee80211_nullfunc_get(priv->hw, priv->vif, 0);
  WARN_ON(!skb);
  if (skb)
   cw1200_tx(priv->hw, ((void*)0), skb);
 }
}
