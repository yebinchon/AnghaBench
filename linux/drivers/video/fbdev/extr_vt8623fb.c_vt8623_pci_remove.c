
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8623fb_info {int mmio_base; int wc_cookie; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int screen_base; int cmap; struct vt8623fb_info* par; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void vt8623_pci_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 if (info) {
  struct vt8623fb_info *par = info->par;

  arch_phys_wc_del(par->wc_cookie);
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);

  pci_iounmap(dev, info->screen_base);
  pci_iounmap(dev, par->mmio_base);
  pci_release_regions(dev);


  framebuffer_release(info);
 }
}
