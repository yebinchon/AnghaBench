
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct geodefb_par {void* dc_regs; int vid_regs; } ;
struct TYPE_2__ {unsigned int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; void* screen_base; struct geodefb_par* par; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int dev_info (int *,char*,int,unsigned int) ;
 int gx1_frame_buffer_size () ;
 unsigned int gx1_gx_base () ;
 void* ioremap (unsigned int,int) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_request_region (struct pci_dev*,int ,char*) ;
 int request_mem_region (unsigned int,int,char*) ;

__attribute__((used)) static int gx1fb_map_video_memory(struct fb_info *info, struct pci_dev *dev)
{
 struct geodefb_par *par = info->par;
 unsigned gx_base;
 int fb_len;
 int ret;

 gx_base = gx1_gx_base();
 if (!gx_base)
  return -ENODEV;

 ret = pci_enable_device(dev);
 if (ret < 0)
  return ret;

 ret = pci_request_region(dev, 0, "gx1fb (video)");
 if (ret < 0)
  return ret;
 par->vid_regs = pci_ioremap_bar(dev, 0);
 if (!par->vid_regs)
  return -ENOMEM;

 if (!request_mem_region(gx_base + 0x8300, 0x100, "gx1fb (display controller)"))
  return -EBUSY;
 par->dc_regs = ioremap(gx_base + 0x8300, 0x100);
 if (!par->dc_regs)
  return -ENOMEM;

 if ((fb_len = gx1_frame_buffer_size()) < 0)
  return -ENOMEM;
 info->fix.smem_start = gx_base + 0x800000;
 info->fix.smem_len = fb_len;
 info->screen_base = ioremap(info->fix.smem_start, info->fix.smem_len);
 if (!info->screen_base)
  return -ENOMEM;

 dev_info(&dev->dev, "%d Kibyte of video memory at 0x%lx\n",
   info->fix.smem_len / 1024, info->fix.smem_start);

 return 0;
}
