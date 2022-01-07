
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lxfb_par {int vp_regs; int dc_regs; int gp_regs; } ;
struct fb_info {int cmap; int screen_base; struct lxfb_par* par; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void lxfb_remove(struct pci_dev *pdev)
{
 struct fb_info *info = pci_get_drvdata(pdev);
 struct lxfb_par *par = info->par;

 unregister_framebuffer(info);

 iounmap(info->screen_base);
 pci_release_region(pdev, 0);

 iounmap(par->gp_regs);
 pci_release_region(pdev, 1);

 iounmap(par->dc_regs);
 pci_release_region(pdev, 2);

 iounmap(par->vp_regs);
 pci_release_region(pdev, 3);

 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
}
