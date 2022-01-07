
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct knav_link_ram_block {int size; int * virt; scalar_t__ dma; } ;
struct knav_device {int dev; } ;
struct device_node {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int * dmam_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int of_property_read_u32_array (struct device_node*,char const*,void**,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int knav_get_link_ram(struct knav_device *kdev,
           const char *name,
           struct knav_link_ram_block *block)
{
 struct platform_device *pdev = to_platform_device(kdev->dev);
 struct device_node *node = pdev->dev.of_node;
 u32 temp[2];
 if (!of_property_read_u32_array(node, name , temp, 2)) {
  if (temp[0]) {




   block->dma = (dma_addr_t)temp[0];
   block->virt = ((void*)0);
   block->size = temp[1];
  } else {
   block->size = temp[1];

   block->virt = dmam_alloc_coherent(kdev->dev,
        8 * block->size, &block->dma,
        GFP_KERNEL);
   if (!block->virt) {
    dev_err(kdev->dev, "failed to alloc linkram\n");
    return -ENOMEM;
   }
  }
 } else {
  return -ENODEV;
 }
 return 0;
}
