
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void xxxfb_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);


 if (info) {
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);

  framebuffer_release(info);
 }
}
