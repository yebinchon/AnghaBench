
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm3_par {int v_regs; int wc_cookie; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct fb_fix_screeninfo {int mmio_len; int mmio_start; int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ pixmap; int screen_base; int cmap; struct pm3_par* par; struct fb_fix_screeninfo fix; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void pm3fb_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 if (info) {
  struct fb_fix_screeninfo *fix = &info->fix;
  struct pm3_par *par = info->par;

  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);

  arch_phys_wc_del(par->wc_cookie);
  iounmap(info->screen_base);
  release_mem_region(fix->smem_start, fix->smem_len);
  iounmap(par->v_regs);
  release_mem_region(fix->mmio_start, fix->mmio_len);

  kfree(info->pixmap.addr);
  framebuffer_release(info);
 }
}
