
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ks_wlan_private {int wakeup_count; int last_wakeup; int net_dev; TYPE_1__ psstatus; } ;


 scalar_t__ PS_SNOOZE ;
 int WAKEUP_REG ;
 int WAKEUP_REQ ;
 scalar_t__ atomic_read (int *) ;
 int jiffies ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 int netdev_err (int ,char*) ;

void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
{
 int ret;

 if (atomic_read(&priv->psstatus.status) == PS_SNOOZE) {
  ret = ks7010_sdio_writeb(priv, WAKEUP_REG, WAKEUP_REQ);
  if (ret)
   netdev_err(priv->net_dev, "write WAKEUP_REG\n");

  priv->last_wakeup = jiffies;
  ++priv->wakeup_count;
 }
}
