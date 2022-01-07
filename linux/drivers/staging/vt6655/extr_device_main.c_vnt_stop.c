
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {TYPE_1__* pcid; int interrupt_work; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int irq; } ;


 int CARDbRadioPowerOff (struct vnt_private*) ;
 int MACbShutdown (struct vnt_private*) ;
 int MACbSoftwareReset (struct vnt_private*) ;
 int cancel_work_sync (int *) ;
 int device_free_rd0_ring (struct vnt_private*) ;
 int device_free_rd1_ring (struct vnt_private*) ;
 int device_free_rings (struct vnt_private*) ;
 int device_free_td0_ring (struct vnt_private*) ;
 int device_free_td1_ring (struct vnt_private*) ;
 int free_irq (int ,struct vnt_private*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;

__attribute__((used)) static void vnt_stop(struct ieee80211_hw *hw)
{
 struct vnt_private *priv = hw->priv;

 ieee80211_stop_queues(hw);

 cancel_work_sync(&priv->interrupt_work);

 MACbShutdown(priv);
 MACbSoftwareReset(priv);
 CARDbRadioPowerOff(priv);

 device_free_td0_ring(priv);
 device_free_td1_ring(priv);
 device_free_rd0_ring(priv);
 device_free_rd1_ring(priv);
 device_free_rings(priv);

 free_irq(priv->pcid->irq, priv);
}
