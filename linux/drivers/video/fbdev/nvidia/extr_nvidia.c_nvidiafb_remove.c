
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvidia_par {int REGS; int wc_cookie; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {int modedb; } ;
struct fb_info {TYPE_1__ pixmap; TYPE_2__ monspecs; int screen_base; struct nvidia_par* par; } ;


 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int arch_phys_wc_del (int ) ;
 int fb_destroy_modedb (int ) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int nvidia_bl_exit (struct nvidia_par*) ;
 int nvidia_delete_i2c_busses (struct nvidia_par*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void nvidiafb_remove(struct pci_dev *pd)
{
 struct fb_info *info = pci_get_drvdata(pd);
 struct nvidia_par *par = info->par;

 NVTRACE_ENTER();

 unregister_framebuffer(info);

 nvidia_bl_exit(par);
 arch_phys_wc_del(par->wc_cookie);
 iounmap(info->screen_base);
 fb_destroy_modedb(info->monspecs.modedb);
 nvidia_delete_i2c_busses(par);
 iounmap(par->REGS);
 pci_release_regions(pd);
 kfree(info->pixmap.addr);
 framebuffer_release(info);
 NVTRACE_LEAVE();
}
