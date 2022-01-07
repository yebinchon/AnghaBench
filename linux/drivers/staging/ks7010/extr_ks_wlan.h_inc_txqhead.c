
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qhead; } ;
struct ks_wlan_private {TYPE_1__ tx_dev; } ;


 int TX_DEVICE_BUFF_SIZE ;

__attribute__((used)) static inline void inc_txqhead(struct ks_wlan_private *priv)
{
 priv->tx_dev.qhead = (priv->tx_dev.qhead + 1) % TX_DEVICE_BUFF_SIZE;
}
