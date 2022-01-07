
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {TYPE_1__* pcid; int PortOffset; int rx_buf_sz; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int ENOMEM ;
 int IMR_MASK_VALUE ;
 int IRQF_SHARED ;
 int MACvIntEnable (int ,int ) ;
 int PKT_BUF_SZ ;
 int dev_dbg (int *,char*) ;
 int device_free_rd0_ring (struct vnt_private*) ;
 int device_free_rd1_ring (struct vnt_private*) ;
 int device_free_rings (struct vnt_private*) ;
 int device_free_td0_ring (struct vnt_private*) ;
 int device_init_rd0_ring (struct vnt_private*) ;
 int device_init_rd1_ring (struct vnt_private*) ;
 int device_init_registers (struct vnt_private*) ;
 int device_init_rings (struct vnt_private*) ;
 int device_init_td0_ring (struct vnt_private*) ;
 int device_init_td1_ring (struct vnt_private*) ;
 int free_irq (int ,struct vnt_private*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int request_irq (int ,int ,int ,char*,struct vnt_private*) ;
 int vnt_interrupt ;

__attribute__((used)) static int vnt_start(struct ieee80211_hw *hw)
{
 struct vnt_private *priv = hw->priv;
 int ret;

 priv->rx_buf_sz = PKT_BUF_SZ;
 if (!device_init_rings(priv))
  return -ENOMEM;

 ret = request_irq(priv->pcid->irq, vnt_interrupt,
     IRQF_SHARED, "vt6655", priv);
 if (ret) {
  dev_dbg(&priv->pcid->dev, "failed to start irq\n");
  goto err_free_rings;
 }

 dev_dbg(&priv->pcid->dev, "call device init rd0 ring\n");
 ret = device_init_rd0_ring(priv);
 if (ret)
  goto err_free_irq;
 ret = device_init_rd1_ring(priv);
 if (ret)
  goto err_free_rd0_ring;
 ret = device_init_td0_ring(priv);
 if (ret)
  goto err_free_rd1_ring;
 ret = device_init_td1_ring(priv);
 if (ret)
  goto err_free_td0_ring;

 device_init_registers(priv);

 dev_dbg(&priv->pcid->dev, "call MACvIntEnable\n");
 MACvIntEnable(priv->PortOffset, IMR_MASK_VALUE);

 ieee80211_wake_queues(hw);

 return 0;

err_free_td0_ring:
 device_free_td0_ring(priv);
err_free_rd1_ring:
 device_free_rd1_ring(priv);
err_free_rd0_ring:
 device_free_rd0_ring(priv);
err_free_irq:
 free_irq(priv->pcid->irq, priv);
err_free_rings:
 device_free_rings(priv);
 return ret;
}
