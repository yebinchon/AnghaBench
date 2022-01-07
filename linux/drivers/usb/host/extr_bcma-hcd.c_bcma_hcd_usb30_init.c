
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct bcma_hcd_device {struct bcma_device* core; } ;
struct bcma_device {struct device dev; } ;


 int bcma_core_enable (struct bcma_device*,int ) ;
 int of_platform_default_populate (int ,int *,struct device*) ;

__attribute__((used)) static int bcma_hcd_usb30_init(struct bcma_hcd_device *bcma_hcd)
{
 struct bcma_device *core = bcma_hcd->core;
 struct device *dev = &core->dev;

 bcma_core_enable(core, 0);

 of_platform_default_populate(dev->of_node, ((void*)0), dev);

 return 0;
}
