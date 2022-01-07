
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sstfb_par {int mmio_vbase; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int mmio_len; int mmio_start; int smem_start; } ;
struct fb_info {int cmap; TYPE_1__ fix; int screen_base; int dev; struct sstfb_par* par; } ;


 int * device_attrs ;
 int device_remove_file (int ,int *) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int) ;
 int sst_shutdown (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void sstfb_remove(struct pci_dev *pdev)
{
 struct sstfb_par *par;
 struct fb_info *info;

 info = pci_get_drvdata(pdev);
 par = info->par;

 device_remove_file(info->dev, &device_attrs[0]);
 sst_shutdown(info);
 iounmap(info->screen_base);
 iounmap(par->mmio_vbase);
 release_mem_region(info->fix.smem_start, 0x400000);
 release_mem_region(info->fix.mmio_start, info->fix.mmio_len);
 fb_dealloc_cmap(&info->cmap);
 unregister_framebuffer(info);
 framebuffer_release(info);
}
