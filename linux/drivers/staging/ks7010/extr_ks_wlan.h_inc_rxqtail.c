
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qtail; } ;
struct ks_wlan_private {TYPE_1__ rx_dev; } ;


 int RX_DEVICE_BUFF_SIZE ;

__attribute__((used)) static inline void inc_rxqtail(struct ks_wlan_private *priv)
{
 priv->rx_dev.qtail = (priv->rx_dev.qtail + 1) % RX_DEVICE_BUFF_SIZE;
}
