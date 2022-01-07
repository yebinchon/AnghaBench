
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_dev_lock; scalar_t__ qtail; scalar_t__ qhead; } ;
struct TYPE_3__ {int tx_dev_lock; scalar_t__ qtail; scalar_t__ qhead; } ;
struct ks_wlan_private {int rx_bh_task; TYPE_2__ rx_dev; TYPE_1__ tx_dev; } ;


 int rx_event_task ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int trx_device_init(struct ks_wlan_private *priv)
{
 priv->tx_dev.qhead = 0;
 priv->tx_dev.qtail = 0;

 priv->rx_dev.qhead = 0;
 priv->rx_dev.qtail = 0;

 spin_lock_init(&priv->tx_dev.tx_dev_lock);
 spin_lock_init(&priv->rx_dev.rx_dev_lock);

 tasklet_init(&priv->rx_bh_task, rx_event_task, (unsigned long)priv);

 return 0;
}
