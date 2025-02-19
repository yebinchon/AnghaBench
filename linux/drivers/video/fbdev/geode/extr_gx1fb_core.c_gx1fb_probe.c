
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct geodefb_par {scalar_t__ dc_regs; scalar_t__ vid_regs; int * vid_ops; int * dc_ops; } ;
struct TYPE_2__ {int id; int smem_len; } ;
struct fb_info {int cmap; scalar_t__ screen_base; TYPE_1__ fix; int var; struct geodefb_par* par; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int cs5530_vid_ops ;
 int dev_err (int *,char*) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (int *,struct fb_info*,int ,int ,int ,int *,int) ;
 int fb_info (struct fb_info*,char*,int ) ;
 int framebuffer_release (struct fb_info*) ;
 int gx1_dc_ops ;
 scalar_t__ gx1_gx_base () ;
 int gx1_modedb ;
 int gx1fb_check_var (int *,struct fb_info*) ;
 struct fb_info* gx1fb_init_fbinfo (int *) ;
 int gx1fb_map_video_memory (struct fb_info*,struct pci_dev*) ;
 int gx1fb_set_par (struct fb_info*) ;
 int iounmap (scalar_t__) ;
 int memset_io (scalar_t__,int ,int ) ;
 int mode_option ;
 int pci_release_region (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int release_mem_region (scalar_t__,int) ;

__attribute__((used)) static int gx1fb_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct geodefb_par *par;
 struct fb_info *info;
 int ret;

 info = gx1fb_init_fbinfo(&pdev->dev);
 if (!info)
  return -ENOMEM;
 par = info->par;


 par->dc_ops = &gx1_dc_ops;
 par->vid_ops = &cs5530_vid_ops;

 if ((ret = gx1fb_map_video_memory(info, pdev)) < 0) {
  dev_err(&pdev->dev, "failed to map frame buffer or controller registers\n");
  goto err;
 }

 ret = fb_find_mode(&info->var, info, mode_option,
      gx1_modedb, ARRAY_SIZE(gx1_modedb), ((void*)0), 16);
 if (ret == 0 || ret == 4) {
  dev_err(&pdev->dev, "could not find valid video mode\n");
  ret = -EINVAL;
  goto err;
 }


        memset_io(info->screen_base, 0, info->fix.smem_len);

 gx1fb_check_var(&info->var, info);
 gx1fb_set_par(info);

 if (register_framebuffer(info) < 0) {
  ret = -EINVAL;
  goto err;
 }
 pci_set_drvdata(pdev, info);
 fb_info(info, "%s frame buffer device\n", info->fix.id);
 return 0;

  err:
 if (info->screen_base) {
  iounmap(info->screen_base);
  pci_release_region(pdev, 0);
 }
 if (par->vid_regs) {
  iounmap(par->vid_regs);
  pci_release_region(pdev, 1);
 }
 if (par->dc_regs) {
  iounmap(par->dc_regs);
  release_mem_region(gx1_gx_base() + 0x8300, 0x100);
 }

 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);

 return ret;
}
