
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fb_info {int * screen_base; } ;


 int iounmap (int *) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void chipsfb_remove(struct pci_dev *dp)
{
 struct fb_info *p = pci_get_drvdata(dp);

 if (p->screen_base == ((void*)0))
  return;
 unregister_framebuffer(p);
 iounmap(p->screen_base);
 p->screen_base = ((void*)0);
 pci_release_region(dp, 0);
}
