
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct i740fb_par {int regs; int ddc_adapter; scalar_t__ ddc_registered; int wc_cookie; } ;
struct fb_info {int screen_base; int cmap; struct i740fb_par* par; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int i2c_del_adapter (int *) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void i740fb_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 if (info) {
  struct i740fb_par *par = info->par;
  arch_phys_wc_del(par->wc_cookie);
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);
  if (par->ddc_registered)
   i2c_del_adapter(&par->ddc_adapter);
  pci_iounmap(dev, par->regs);
  pci_iounmap(dev, info->screen_base);
  pci_release_regions(dev);

  framebuffer_release(info);
 }
}
