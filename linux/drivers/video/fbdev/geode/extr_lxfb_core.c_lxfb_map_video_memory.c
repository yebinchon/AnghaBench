
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct lxfb_par {int * vp_regs; int * dc_regs; int * gp_regs; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int * screen_base; struct lxfb_par* par; } ;


 int DC_GLIU0_MEM_OFFSET ;
 int DC_UNLOCK ;
 int DC_UNLOCK_LOCK ;
 int DC_UNLOCK_UNLOCK ;
 int ENOMEM ;
 int dev_info (int *,char*,int,int) ;
 int * ioremap (int,int) ;
 int lx_framebuffer_size () ;
 int pci_enable_device (struct pci_dev*) ;
 void* pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_request_region (struct pci_dev*,int,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int vram ;
 int write_dc (struct lxfb_par*,int ,int) ;

__attribute__((used)) static int lxfb_map_video_memory(struct fb_info *info, struct pci_dev *dev)
{
 struct lxfb_par *par = info->par;
 int ret;

 ret = pci_enable_device(dev);

 if (ret)
  return ret;

 ret = pci_request_region(dev, 0, "lxfb-framebuffer");

 if (ret)
  return ret;

 ret = pci_request_region(dev, 1, "lxfb-gp");

 if (ret)
  return ret;

 ret = pci_request_region(dev, 2, "lxfb-vg");

 if (ret)
  return ret;

 ret = pci_request_region(dev, 3, "lxfb-vp");

 if (ret)
  return ret;

 info->fix.smem_start = pci_resource_start(dev, 0);
 info->fix.smem_len = vram ? vram : lx_framebuffer_size();

 info->screen_base = ioremap(info->fix.smem_start, info->fix.smem_len);

 ret = -ENOMEM;

 if (info->screen_base == ((void*)0))
  return ret;

 par->gp_regs = pci_ioremap_bar(dev, 1);

 if (par->gp_regs == ((void*)0))
  return ret;

 par->dc_regs = pci_ioremap_bar(dev, 2);

 if (par->dc_regs == ((void*)0))
  return ret;

 par->vp_regs = pci_ioremap_bar(dev, 3);

 if (par->vp_regs == ((void*)0))
  return ret;

 write_dc(par, DC_UNLOCK, DC_UNLOCK_UNLOCK);
 write_dc(par, DC_GLIU0_MEM_OFFSET, info->fix.smem_start & 0xFF000000);
 write_dc(par, DC_UNLOCK, DC_UNLOCK_LOCK);

 dev_info(&dev->dev, "%d KB of video memory at 0x%lx\n",
   info->fix.smem_len / 1024, info->fix.smem_start);

 return 0;
}
