
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int wakeup_request; } ;
struct ks_wlan_private {int sleep_mode; TYPE_1__ sleepstatus; int wakeup_count; int last_wakeup; int net_dev; } ;


 int WAKEUP_REG ;
 int WAKEUP_REQ ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int jiffies ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void ks_wlan_hw_sleep_wakeup_request(struct ks_wlan_private *priv)
{
 int ret;


 atomic_set(&priv->sleepstatus.wakeup_request, 0);

 if (atomic_read(&priv->sleepstatus.status) == 1) {
  ret = ks7010_sdio_writeb(priv, WAKEUP_REG, WAKEUP_REQ);
  if (ret) {
   netdev_err(priv->net_dev, "write WAKEUP_REG\n");
   goto set_sleep_mode;
  }
  atomic_set(&priv->sleepstatus.status, 0);
  priv->last_wakeup = jiffies;
  ++priv->wakeup_count;
 }

set_sleep_mode:
 priv->sleep_mode = atomic_read(&priv->sleepstatus.status);
}
