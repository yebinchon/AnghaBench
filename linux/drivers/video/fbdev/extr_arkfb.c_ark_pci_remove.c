
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fb_info {int screen_base; int cmap; struct arkfb_info* par; } ;
struct arkfb_info {int dac; int wc_cookie; } ;


 int arch_phys_wc_del (int ) ;
 int dac_release (int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void ark_pci_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 if (info) {
  struct arkfb_info *par = info->par;
  arch_phys_wc_del(par->wc_cookie);
  dac_release(par->dac);
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);

  pci_iounmap(dev, info->screen_base);
  pci_release_regions(dev);


  framebuffer_release(info);
 }
}
