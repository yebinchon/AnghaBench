
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
struct tc_dev {TYPE_1__ resource; } ;
struct pmagbbfb_par {int mmio; int smem; } ;
struct fb_info {int cmap; struct pmagbbfb_par* par; } ;
struct device {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 struct fb_info* dev_get_drvdata (struct device*) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int put_device (struct device*) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 struct tc_dev* to_tc_dev (struct device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int pmagbbfb_remove(struct device *dev)
{
 struct tc_dev *tdev = to_tc_dev(dev);
 struct fb_info *info = dev_get_drvdata(dev);
 struct pmagbbfb_par *par = info->par;
 resource_size_t start, len;

 put_device(dev);
 unregister_framebuffer(info);
 iounmap(par->smem);
 iounmap(par->mmio);
 start = tdev->resource.start;
 len = tdev->resource.end - start + 1;
 release_mem_region(start, len);
 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
 return 0;
}
