
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {TYPE_1__* pcid; scalar_t__ PortOffset; scalar_t__ ioaddr; int abyCurrentNetAddr; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int dev_info (int *,char*,int ,unsigned long,unsigned long,int ) ;

__attribute__((used)) static void device_print_info(struct vnt_private *priv)
{
 dev_info(&priv->pcid->dev, "MAC=%pM IO=0x%lx Mem=0x%lx IRQ=%d\n",
   priv->abyCurrentNetAddr, (unsigned long)priv->ioaddr,
   (unsigned long)priv->PortOffset, priv->pcid->irq);
}
