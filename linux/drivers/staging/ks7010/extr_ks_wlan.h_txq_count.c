
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qtail; int qhead; } ;
struct ks_wlan_private {TYPE_1__ tx_dev; } ;


 unsigned int CIRC_CNT_TO_END (int ,int ,int ) ;
 int TX_DEVICE_BUFF_SIZE ;

__attribute__((used)) static inline unsigned int txq_count(struct ks_wlan_private *priv)
{
 return CIRC_CNT_TO_END(priv->tx_dev.qhead, priv->tx_dev.qtail,
          TX_DEVICE_BUFF_SIZE);
}
