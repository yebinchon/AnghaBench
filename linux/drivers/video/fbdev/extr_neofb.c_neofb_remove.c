
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int modedb; } ;
struct fb_info {TYPE_1__ monspecs; } ;


 int DBG (char*) ;
 int fb_destroy_modedb (int ) ;
 int neo_free_fb_info (struct fb_info*) ;
 int neo_unmap_mmio (struct fb_info*) ;
 int neo_unmap_video (struct fb_info*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void neofb_remove(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);

 DBG("neofb_remove");

 if (info) {
  unregister_framebuffer(info);

  neo_unmap_video(info);
  fb_destroy_modedb(info->monspecs.modedb);
  neo_unmap_mmio(info);
  neo_free_fb_info(info);
 }
}
