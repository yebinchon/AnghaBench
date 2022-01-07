
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {scalar_t__ num_resources; int name; int dev; int * resource; } ;
struct notifier_block {int dummy; } ;




 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int dev_err (int *,char*,char*,int ) ;
 struct platform_device* to_platform_device (void*) ;
 int xen_map_device_mmio (int *,scalar_t__) ;
 int xen_unmap_device_mmio (int *,scalar_t__) ;

__attribute__((used)) static int xen_platform_notifier(struct notifier_block *nb,
     unsigned long action, void *data)
{
 struct platform_device *pdev = to_platform_device(data);
 int r = 0;

 if (pdev->num_resources == 0 || pdev->resource == ((void*)0))
  return NOTIFY_OK;

 switch (action) {
 case 129:
  r = xen_map_device_mmio(pdev->resource, pdev->num_resources);
  break;
 case 128:
  r = xen_unmap_device_mmio(pdev->resource, pdev->num_resources);
  break;
 default:
  return NOTIFY_DONE;
 }
 if (r)
  dev_err(&pdev->dev, "Platform: Failed to %s device %s MMIO!\n",
   action == 129 ? "map" :
   (action == 128 ? "unmap" : "?"),
   pdev->name);

 return NOTIFY_OK;
}
