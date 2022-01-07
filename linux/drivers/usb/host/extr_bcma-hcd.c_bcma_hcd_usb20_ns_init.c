
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct bcma_hcd_device {struct bcma_device* core; } ;
struct bcma_device {struct device dev; TYPE_1__* bus; } ;
struct bcma_chipinfo {scalar_t__ id; } ;
struct TYPE_2__ {struct bcma_chipinfo chipinfo; } ;


 scalar_t__ BCMA_CHIP_ID_BCM4707 ;
 scalar_t__ BCMA_CHIP_ID_BCM53018 ;
 int bcma_core_enable (struct bcma_device*,int ) ;
 int bcma_hcd_usb20_ns_init_hc (struct bcma_device*) ;
 int of_platform_default_populate (int ,int *,struct device*) ;

__attribute__((used)) static int bcma_hcd_usb20_ns_init(struct bcma_hcd_device *bcma_hcd)
{
 struct bcma_device *core = bcma_hcd->core;
 struct bcma_chipinfo *ci = &core->bus->chipinfo;
 struct device *dev = &core->dev;

 bcma_core_enable(core, 0);

 if (ci->id == BCMA_CHIP_ID_BCM4707 ||
     ci->id == BCMA_CHIP_ID_BCM53018)
  bcma_hcd_usb20_ns_init_hc(core);

 of_platform_default_populate(dev->of_node, ((void*)0), dev);

 return 0;
}
