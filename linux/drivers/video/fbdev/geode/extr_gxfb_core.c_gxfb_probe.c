
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct gxfb_par {int enable_crt; scalar_t__ gp_regs; scalar_t__ dc_regs; scalar_t__ vid_regs; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_2__ {int id; int smem_len; } ;
struct fb_info {int cmap; scalar_t__ screen_base; TYPE_1__ fix; int var; struct gxfb_par* par; } ;


 int EINVAL ;
 int ENOMEM ;
 int MSR_GX_GLD_MSR_CONFIG ;
 unsigned long MSR_GX_GLD_MSR_CONFIG_FP ;
 int dev_err (int *,char*) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (int *,struct fb_info*,int ,struct fb_videomode*,unsigned int,int *,int) ;
 int fb_info (struct fb_info*,char*,int ) ;
 int framebuffer_release (struct fb_info*) ;
 int get_modedb (struct fb_videomode**,unsigned int*) ;
 int gxfb_check_var (int *,struct fb_info*) ;
 struct fb_info* gxfb_init_fbinfo (int *) ;
 int gxfb_map_video_memory (struct fb_info*,struct pci_dev*) ;
 int gxfb_set_par (struct fb_info*) ;
 int iounmap (scalar_t__) ;
 int memset_io (scalar_t__,int ,int ) ;
 int mode_option ;
 int pci_release_region (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 int pm_set_vt_switch (int ) ;
 int rdmsrl (int ,unsigned long) ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int vt_switch ;

__attribute__((used)) static int gxfb_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct gxfb_par *par;
 struct fb_info *info;
 int ret;
 unsigned long val;

 struct fb_videomode *modedb_ptr;
 unsigned int modedb_size;

 info = gxfb_init_fbinfo(&pdev->dev);
 if (!info)
  return -ENOMEM;
 par = info->par;

 if ((ret = gxfb_map_video_memory(info, pdev)) < 0) {
  dev_err(&pdev->dev, "failed to map frame buffer or controller registers\n");
  goto err;
 }



 rdmsrl(MSR_GX_GLD_MSR_CONFIG, val);

 if ((val & MSR_GX_GLD_MSR_CONFIG_FP) == MSR_GX_GLD_MSR_CONFIG_FP)
  par->enable_crt = 0;
 else
  par->enable_crt = 1;

 get_modedb(&modedb_ptr, &modedb_size);
 ret = fb_find_mode(&info->var, info, mode_option,
      modedb_ptr, modedb_size, ((void*)0), 16);
 if (ret == 0 || ret == 4) {
  dev_err(&pdev->dev, "could not find valid video mode\n");
  ret = -EINVAL;
  goto err;
 }



        memset_io(info->screen_base, 0, info->fix.smem_len);

 gxfb_check_var(&info->var, info);
 gxfb_set_par(info);

 pm_set_vt_switch(vt_switch);

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
  pci_release_region(pdev, 3);
 }
 if (par->dc_regs) {
  iounmap(par->dc_regs);
  pci_release_region(pdev, 2);
 }
 if (par->gp_regs) {
  iounmap(par->gp_regs);
  pci_release_region(pdev, 1);
 }

 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
 return ret;
}
