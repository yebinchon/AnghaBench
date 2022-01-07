
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Architecture; int PRAMIN; } ;
struct riva_par {TYPE_1__ riva; int ctrl_base; int wc_cookie; int EDID; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int addr; } ;
struct fb_info {TYPE_2__ pixmap; int screen_base; struct riva_par* par; } ;


 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 scalar_t__ NV_ARCH_03 ;
 int arch_phys_wc_del (int ) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int riva_bl_exit (struct fb_info*) ;
 int riva_delete_i2c_busses (struct riva_par*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void rivafb_remove(struct pci_dev *pd)
{
 struct fb_info *info = pci_get_drvdata(pd);
 struct riva_par *par = info->par;

 NVTRACE_ENTER();






 unregister_framebuffer(info);

 riva_bl_exit(info);
 arch_phys_wc_del(par->wc_cookie);
 iounmap(par->ctrl_base);
 iounmap(info->screen_base);
 if (par->riva.Architecture == NV_ARCH_03)
  iounmap(par->riva.PRAMIN);
 pci_release_regions(pd);
 kfree(info->pixmap.addr);
 framebuffer_release(info);
 NVTRACE_LEAVE();
}
