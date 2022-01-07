
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int addr; } ;
struct fb_info {TYPE_1__ pixmap; int cmap; } ;


 int DBG (char*) ;
 int fb_alloc_cmap (int *,int ,int ) ;
 int framebuffer_release (struct fb_info*) ;
 int kfree (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int savage_unmap_mmio (struct fb_info*) ;
 int savage_unmap_video (struct fb_info*) ;
 int savagefb_delete_i2c_busses (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void savagefb_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 DBG("savagefb_remove");

 if (info) {
  unregister_framebuffer(info);




  fb_alloc_cmap(&info->cmap, 0, 0);
  savage_unmap_video(info);
  savage_unmap_mmio(info);
  kfree(info->pixmap.addr);
  pci_release_regions(dev);
  framebuffer_release(info);
 }
}
