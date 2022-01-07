
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int wakeup_request; int doze_request; } ;
struct ks_wlan_private {char* firmware_version; TYPE_1__ sleepstatus; int wstats; int nstats; void* last_wakeup; void* last_doze; scalar_t__ version_size; struct net_device* net_dev; int dev_state; struct ks_sdio_card* if_hw; } ;
struct ks_sdio_card {int dummy; } ;


 int DEVICE_STATE_PREBOOT ;
 int atomic_set (int *,int ) ;
 int hostif_init (struct ks_wlan_private*) ;
 void* jiffies ;
 int ks7010_init_defaults (struct ks_wlan_private*) ;
 int ks_wlan_net_start (struct net_device*) ;
 int memset (int *,int ,int) ;
 int trx_device_init (struct ks_wlan_private*) ;

__attribute__((used)) static void ks7010_private_init(struct ks_wlan_private *priv,
    struct ks_sdio_card *card,
    struct net_device *netdev)
{

 priv->if_hw = card;

 priv->dev_state = DEVICE_STATE_PREBOOT;
 priv->net_dev = netdev;
 priv->firmware_version[0] = '\0';
 priv->version_size = 0;
 priv->last_doze = jiffies;
 priv->last_wakeup = jiffies;
 memset(&priv->nstats, 0, sizeof(priv->nstats));
 memset(&priv->wstats, 0, sizeof(priv->wstats));


 atomic_set(&priv->sleepstatus.doze_request, 0);
 atomic_set(&priv->sleepstatus.wakeup_request, 0);
 atomic_set(&priv->sleepstatus.wakeup_request, 0);

 trx_device_init(priv);
 hostif_init(priv);
 ks_wlan_net_start(netdev);
 ks7010_init_defaults(priv);
}
