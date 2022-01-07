
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qtail; int qhead; } ;
struct ks_wlan_private {TYPE_1__ tx_dev; } ;


 scalar_t__ CIRC_SPACE (int ,int ,int ) ;
 int TX_DEVICE_BUFF_SIZE ;

__attribute__((used)) static inline bool txq_has_space(struct ks_wlan_private *priv)
{
 return (CIRC_SPACE(priv->tx_dev.qhead, priv->tx_dev.qtail,
      TX_DEVICE_BUFF_SIZE) > 0);
}
