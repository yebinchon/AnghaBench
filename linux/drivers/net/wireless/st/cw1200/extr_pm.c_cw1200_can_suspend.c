
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {TYPE_1__* hw; int bh_rx; } ;
struct TYPE_2__ {int wiphy; } ;


 scalar_t__ atomic_read (int *) ;
 int wiphy_dbg (int ,char*) ;

int cw1200_can_suspend(struct cw1200_common *priv)
{
 if (atomic_read(&priv->bh_rx)) {
  wiphy_dbg(priv->hw->wiphy, "Suspend interrupted.\n");
  return 0;
 }
 return 1;
}
