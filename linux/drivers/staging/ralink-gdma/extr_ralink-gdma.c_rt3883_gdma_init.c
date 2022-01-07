
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct gdma_dma_dev {TYPE_1__ ddev; } ;


 int GDMA_REG_GCT ;
 int GDMA_REG_GCT_ARBIT_RR ;
 int GDMA_REG_GCT_CHAN_MASK ;
 int GDMA_REG_GCT_CHAN_SHIFT ;
 int GDMA_REG_GCT_VER_MASK ;
 int GDMA_REG_GCT_VER_SHIFT ;
 int dev_info (int ,char*,int,int) ;
 int gdma_dma_read (struct gdma_dma_dev*,int ) ;
 int gdma_dma_write (struct gdma_dma_dev*,int ,int ) ;

__attribute__((used)) static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
{
 u32 gct;


 gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);

 gct = gdma_dma_read(dma_dev, GDMA_REG_GCT);
 dev_info(dma_dev->ddev.dev, "revision: %d, channels: %d\n",
   (gct >> GDMA_REG_GCT_VER_SHIFT) & GDMA_REG_GCT_VER_MASK,
   8 << ((gct >> GDMA_REG_GCT_CHAN_SHIFT) &
   GDMA_REG_GCT_CHAN_MASK));
}
