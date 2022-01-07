
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mbo {int bus_address; TYPE_1__* ifp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* driver_dev; } ;


 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static void *dma_alloc(struct mbo *mbo, u32 size)
{
 struct device *dev = mbo->ifp->driver_dev;

 return dma_alloc_coherent(dev, size, &mbo->bus_address, GFP_KERNEL);
}
