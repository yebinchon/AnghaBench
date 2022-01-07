
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_mask; int release; int * bus; struct device* parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct device {int dma_mask; } ;


 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int) ;
 struct umc_dev* kzalloc (int,int ) ;
 int umc_bus_type ;
 int umc_device_release ;

struct umc_dev *umc_device_create(struct device *parent, int n)
{
 struct umc_dev *umc;

 umc = kzalloc(sizeof(struct umc_dev), GFP_KERNEL);
 if (umc) {
  dev_set_name(&umc->dev, "%s-%d", dev_name(parent), n);
  umc->dev.parent = parent;
  umc->dev.bus = &umc_bus_type;
  umc->dev.release = umc_device_release;

  umc->dev.dma_mask = parent->dma_mask;
 }
 return umc;
}
