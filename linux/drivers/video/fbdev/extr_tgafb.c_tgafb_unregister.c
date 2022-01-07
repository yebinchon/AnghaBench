
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tga_par {int tga_mem_base; } ;
struct fb_info {int cmap; struct tga_par* par; } ;
struct device {int dummy; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ resource; } ;


 int TGA_BUS_TC (struct device*) ;
 struct fb_info* dev_get_drvdata (struct device*) ;
 int dev_is_pci (struct device*) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 scalar_t__ pci_resource_len (int ,int ) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int to_pci_dev (struct device*) ;
 TYPE_2__* to_tc_dev (struct device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void tgafb_unregister(struct device *dev)
{
 resource_size_t bar0_start = 0, bar0_len = 0;
 int tga_bus_pci = dev_is_pci(dev);
 int tga_bus_tc = TGA_BUS_TC(dev);
 struct fb_info *info = ((void*)0);
 struct tga_par *par;

 info = dev_get_drvdata(dev);
 if (!info)
  return;

 par = info->par;
 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 iounmap(par->tga_mem_base);
 if (tga_bus_pci) {
  bar0_start = pci_resource_start(to_pci_dev(dev), 0);
  bar0_len = pci_resource_len(to_pci_dev(dev), 0);
 }
 if (tga_bus_tc) {
  bar0_start = to_tc_dev(dev)->resource.start;
  bar0_len = to_tc_dev(dev)->resource.end - bar0_start + 1;
 }
 release_mem_region(bar0_start, bar0_len);
 framebuffer_release(info);
}
