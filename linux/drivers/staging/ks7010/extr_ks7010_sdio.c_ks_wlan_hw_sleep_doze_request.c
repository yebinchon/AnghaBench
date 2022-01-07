
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int doze_request; } ;
struct ks_wlan_private {TYPE_1__ sleepstatus; scalar_t__ sleep_mode; int last_doze; int net_dev; } ;


 int GCR_B_DOZE ;
 int GCR_B_REG ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int jiffies ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void ks_wlan_hw_sleep_doze_request(struct ks_wlan_private *priv)
{
 int ret;


 atomic_set(&priv->sleepstatus.doze_request, 0);

 if (atomic_read(&priv->sleepstatus.status) == 0) {
  ret = ks7010_sdio_writeb(priv, GCR_B_REG, GCR_B_DOZE);
  if (ret) {
   netdev_err(priv->net_dev, "write GCR_B_REG\n");
   goto set_sleep_mode;
  }
  atomic_set(&priv->sleepstatus.status, 1);
  priv->last_doze = jiffies;
 }

set_sleep_mode:
 priv->sleep_mode = atomic_read(&priv->sleepstatus.status);
}
