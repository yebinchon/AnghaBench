
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int qmu_gpd_pool; int dev; } ;


 int ENOMEM ;
 int QMU_GPD_RING_SIZE ;
 int QMU_GPD_SIZE ;
 int compiletime_assert (int,char*) ;
 int dma_pool_create (char*,int ,int ,int,int ) ;

int mtu3_qmu_init(struct mtu3 *mtu)
{

 compiletime_assert(QMU_GPD_SIZE == 16, "QMU_GPD size SHOULD be 16B");

 mtu->qmu_gpd_pool = dma_pool_create("QMU_GPD", mtu->dev,
   QMU_GPD_RING_SIZE, QMU_GPD_SIZE, 0);

 if (!mtu->qmu_gpd_pool)
  return -ENOMEM;

 return 0;
}
