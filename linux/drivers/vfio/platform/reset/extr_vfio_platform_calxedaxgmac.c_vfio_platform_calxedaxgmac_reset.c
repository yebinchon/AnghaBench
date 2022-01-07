
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_region {scalar_t__ ioaddr; int size; int addr; } ;
struct vfio_platform_device {struct vfio_platform_region* regions; } ;


 int ENOMEM ;
 scalar_t__ XGMAC_DMA_INTR_ENA ;
 scalar_t__ ioremap_nocache (int ,int ) ;
 int writel (int ,scalar_t__) ;
 int xgmac_mac_disable (scalar_t__) ;

__attribute__((used)) static int vfio_platform_calxedaxgmac_reset(struct vfio_platform_device *vdev)
{
 struct vfio_platform_region *reg = &vdev->regions[0];

 if (!reg->ioaddr) {
  reg->ioaddr =
   ioremap_nocache(reg->addr, reg->size);
  if (!reg->ioaddr)
   return -ENOMEM;
 }


 writel(0, reg->ioaddr + XGMAC_DMA_INTR_ENA);


 xgmac_mac_disable(reg->ioaddr);

 return 0;
}
