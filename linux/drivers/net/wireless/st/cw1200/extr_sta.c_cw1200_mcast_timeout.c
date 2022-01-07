
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct cw1200_common {int tx_multicast; int ps_state_lock; scalar_t__ buffered_multicasts; scalar_t__ aid0_bit_set; TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;


 int cw1200_bh_wakeup (struct cw1200_common*) ;
 struct cw1200_common* from_timer (int ,struct timer_list*,int ) ;
 int mcast_timeout ;
 struct cw1200_common* priv ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_warn (int ,char*) ;

void cw1200_mcast_timeout(struct timer_list *t)
{
 struct cw1200_common *priv = from_timer(priv, t, mcast_timeout);

 wiphy_warn(priv->hw->wiphy,
     "Multicast delivery timeout.\n");
 spin_lock_bh(&priv->ps_state_lock);
 priv->tx_multicast = priv->aid0_bit_set &&
   priv->buffered_multicasts;
 if (priv->tx_multicast)
  cw1200_bh_wakeup(priv);
 spin_unlock_bh(&priv->ps_state_lock);
}
