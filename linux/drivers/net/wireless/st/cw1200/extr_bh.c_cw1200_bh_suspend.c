
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {int bh_suspend; scalar_t__ bh_error; int bh_evt_wq; int bh_wq; TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;


 int CW1200_BH_SUSPEND ;
 scalar_t__ CW1200_BH_SUSPENDED ;
 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int pr_debug (char*) ;
 scalar_t__ wait_event_timeout (int ,int,int) ;
 int wake_up (int *) ;
 int wiphy_warn (int ,char*) ;

int cw1200_bh_suspend(struct cw1200_common *priv)
{
 pr_debug("[BH] suspend.\n");
 if (priv->bh_error) {
  wiphy_warn(priv->hw->wiphy, "BH error -- can't suspend\n");
  return -EINVAL;
 }

 atomic_set(&priv->bh_suspend, CW1200_BH_SUSPEND);
 wake_up(&priv->bh_wq);
 return wait_event_timeout(priv->bh_evt_wq, priv->bh_error ||
  (CW1200_BH_SUSPENDED == atomic_read(&priv->bh_suspend)),
   1 * HZ) ? 0 : -ETIMEDOUT;
}
