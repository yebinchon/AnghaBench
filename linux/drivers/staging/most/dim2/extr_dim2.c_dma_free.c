
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mbo {int bus_address; int virt_address; TYPE_1__* ifp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* driver_dev; } ;


 int dma_free_coherent (struct device*,int ,int ,int ) ;

__attribute__((used)) static void dma_free(struct mbo *mbo, u32 size)
{
 struct device *dev = mbo->ifp->driver_dev;

 dma_free_coherent(dev, size, mbo->virt_address, mbo->bus_address);
}
