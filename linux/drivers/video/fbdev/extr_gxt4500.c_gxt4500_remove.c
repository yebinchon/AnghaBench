
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct gxt4500_par {int regs; int wc_cookie; } ;
struct fb_info {int screen_base; int cmap; struct gxt4500_par* par; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int release_mem_region (int ,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void gxt4500_remove(struct pci_dev *pdev)
{
 struct fb_info *info = pci_get_drvdata(pdev);
 struct gxt4500_par *par;

 if (!info)
  return;
 par = info->par;
 unregister_framebuffer(info);
 arch_phys_wc_del(par->wc_cookie);
 fb_dealloc_cmap(&info->cmap);
 iounmap(par->regs);
 iounmap(info->screen_base);
 release_mem_region(pci_resource_start(pdev, 0),
      pci_resource_len(pdev, 0));
 release_mem_region(pci_resource_start(pdev, 1),
      pci_resource_len(pdev, 1));
 framebuffer_release(info);
}
