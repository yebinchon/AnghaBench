
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct kyrofb_info {int wc_cookie; int regbase; } ;
struct fb_info {int screen_base; struct kyrofb_info* par; } ;
struct TYPE_2__ {scalar_t__ ulOverlayOffset; scalar_t__ ulNextFreeVidMem; int pSTGReg; } ;


 int DisableRamdacOutput (int ) ;
 int SetCoreClockPLL (int ,struct pci_dev*) ;
 int StopVTG (int ) ;
 int arch_phys_wc_del (int ) ;
 TYPE_1__ deviceInfo ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void kyrofb_remove(struct pci_dev *pdev)
{
 struct fb_info *info = pci_get_drvdata(pdev);
 struct kyrofb_info *par = info->par;


 StopVTG(deviceInfo.pSTGReg);
 DisableRamdacOutput(deviceInfo.pSTGReg);


 SetCoreClockPLL(deviceInfo.pSTGReg, pdev);

 deviceInfo.ulNextFreeVidMem = 0;
 deviceInfo.ulOverlayOffset = 0;

 iounmap(info->screen_base);
 iounmap(par->regbase);

 arch_phys_wc_del(par->wc_cookie);

 unregister_framebuffer(info);
 framebuffer_release(info);
}
