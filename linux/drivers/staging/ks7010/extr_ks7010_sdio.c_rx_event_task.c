
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx_device_buffer {int size; int data; } ;
struct TYPE_2__ {size_t qhead; struct rx_device_buffer* rx_dev_buff; } ;
struct ks_wlan_private {scalar_t__ dev_state; int rx_bh_task; TYPE_1__ rx_dev; } ;


 scalar_t__ DEVICE_STATE_BOOT ;
 int hostif_receive (struct ks_wlan_private*,int ,int ) ;
 int inc_rxqhead (struct ks_wlan_private*) ;
 scalar_t__ rxq_has_space (struct ks_wlan_private*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void rx_event_task(unsigned long dev)
{
 struct ks_wlan_private *priv = (struct ks_wlan_private *)dev;
 struct rx_device_buffer *rp;

 if (rxq_has_space(priv) && priv->dev_state >= DEVICE_STATE_BOOT) {
  rp = &priv->rx_dev.rx_dev_buff[priv->rx_dev.qhead];
  hostif_receive(priv, rp->data, rp->size);
  inc_rxqhead(priv);

  if (rxq_has_space(priv))
   tasklet_schedule(&priv->rx_bh_task);
 }
}
