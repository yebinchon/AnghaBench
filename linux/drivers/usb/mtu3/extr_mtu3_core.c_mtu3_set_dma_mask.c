
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtu3 {int mac_base; struct device* dev; } ;
struct device {int dummy; } ;


 int DMA_ADDR_36BIT ;
 int DMA_BIT_MASK (int) ;
 int U3D_MISC_CTRL ;
 int dev_info (struct device*,char*,char*) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int mtu3_readl (int ,int ) ;

__attribute__((used)) static int mtu3_set_dma_mask(struct mtu3 *mtu)
{
 struct device *dev = mtu->dev;
 bool is_36bit = 0;
 int ret = 0;
 u32 value;

 value = mtu3_readl(mtu->mac_base, U3D_MISC_CTRL);
 if (value & DMA_ADDR_36BIT) {
  is_36bit = 1;
  ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(36));

  if (ret) {
   is_36bit = 0;
   ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
  }
 }
 dev_info(dev, "dma mask: %s bits\n", is_36bit ? "36" : "32");

 return ret;
}
