
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct imstt_par {int dc_regs; int cmap_regs; } ;
struct TYPE_2__ {int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; struct imstt_par* par; } ;


 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int release_mem_region (int ,int) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void imsttfb_remove(struct pci_dev *pdev)
{
 struct fb_info *info = pci_get_drvdata(pdev);
 struct imstt_par *par = info->par;
 int size = pci_resource_len(pdev, 0);

 unregister_framebuffer(info);
 iounmap(par->cmap_regs);
 iounmap(par->dc_regs);
 iounmap(info->screen_base);
 release_mem_region(info->fix.smem_start, size);
 framebuffer_release(info);
}
