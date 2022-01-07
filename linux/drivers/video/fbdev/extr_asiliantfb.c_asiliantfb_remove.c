
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fb_info {int screen_base; int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_mem_region (int ,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void asiliantfb_remove(struct pci_dev *dp)
{
 struct fb_info *p = pci_get_drvdata(dp);

 unregister_framebuffer(p);
 fb_dealloc_cmap(&p->cmap);
 iounmap(p->screen_base);
 release_mem_region(pci_resource_start(dp, 0), pci_resource_len(dp, 0));
 framebuffer_release(p);
}
