
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_info {char const* name; int dma_mask; int id; int * parent; } ;
struct platform_device {int dev; } ;
typedef int pdevinfo ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PLATFORM_DEVID_NONE ;
 int dev_warn (int *,char*,char const*) ;
 int memset (struct platform_device_info*,int ,int) ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;

__attribute__((used)) static struct platform_device *
vchiq_register_child(struct platform_device *pdev, const char *name)
{
 struct platform_device_info pdevinfo;
 struct platform_device *child;

 memset(&pdevinfo, 0, sizeof(pdevinfo));

 pdevinfo.parent = &pdev->dev;
 pdevinfo.name = name;
 pdevinfo.id = PLATFORM_DEVID_NONE;
 pdevinfo.dma_mask = DMA_BIT_MASK(32);

 child = platform_device_register_full(&pdevinfo);
 if (IS_ERR(child)) {
  dev_warn(&pdev->dev, "%s not registered\n", name);
  child = ((void*)0);
 }

 return child;
}
