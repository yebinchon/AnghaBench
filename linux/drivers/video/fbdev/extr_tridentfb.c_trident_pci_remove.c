
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tridentfb_par {int io_virt; int ddc_adapter; scalar_t__ ddc_registered; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int addr; } ;
struct fb_info {int cmap; TYPE_1__ pixmap; int screen_base; struct tridentfb_par* par; } ;
struct TYPE_4__ {int mmio_len; int mmio_start; int smem_len; int smem_start; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 TYPE_2__ tridentfb_fix ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void trident_pci_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct tridentfb_par *par = info->par;

 unregister_framebuffer(info);
 if (par->ddc_registered)
  i2c_del_adapter(&par->ddc_adapter);
 iounmap(par->io_virt);
 iounmap(info->screen_base);
 release_mem_region(tridentfb_fix.smem_start, tridentfb_fix.smem_len);
 release_mem_region(tridentfb_fix.mmio_start, tridentfb_fix.mmio_len);
 kfree(info->pixmap.addr);
 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
}
