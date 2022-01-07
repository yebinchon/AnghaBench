
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vbe_mode_ib {int dummy; } ;
struct TYPE_5__ {int total_memory; } ;
struct uvesafb_par {struct vbe_mode_ib* vbe_modes; TYPE_1__ vbe_ib; } ;
struct TYPE_8__ {int kobj; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int modedb; } ;
struct TYPE_6__ {int smem_len; int smem_start; int id; } ;
struct fb_info {int cmap; TYPE_3__ monspecs; int modelist; TYPE_2__ fix; int screen_base; int * fbops; struct uvesafb_par* par; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_destroy_modedb (int ) ;
 int fb_destroy_modelist (int *) ;
 int fb_info (struct fb_info*,char*,int ) ;
 int fb_warn (struct fb_info*,char*) ;
 struct fb_info* framebuffer_alloc (int,TYPE_4__*) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (struct vbe_mode_ib*) ;
 int list_empty (int *) ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int ,int,int) ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int release_mem_region (int ,int) ;
 int release_region (int,int) ;
 int request_mem_region (int ,int,char*) ;
 int request_region (int,int,char*) ;
 int sysfs_create_group (int *,int *) ;
 int uvesafb_dev_attgrp ;
 int uvesafb_init_info (struct fb_info*,struct vbe_mode_ib*) ;
 int uvesafb_init_mtrr (struct fb_info*) ;
 int uvesafb_ioremap (struct fb_info*) ;
 int uvesafb_ops ;
 int uvesafb_vbe_init (struct fb_info*) ;
 int uvesafb_vbe_init_mode (struct fb_info*) ;

__attribute__((used)) static int uvesafb_probe(struct platform_device *dev)
{
 struct fb_info *info;
 struct vbe_mode_ib *mode = ((void*)0);
 struct uvesafb_par *par;
 int err = 0, i;

 info = framebuffer_alloc(sizeof(*par) + sizeof(u32) * 256, &dev->dev);
 if (!info)
  return -ENOMEM;

 par = info->par;

 err = uvesafb_vbe_init(info);
 if (err) {
  pr_err("vbe_init() failed with %d\n", err);
  goto out;
 }

 info->fbops = &uvesafb_ops;

 i = uvesafb_vbe_init_mode(info);
 if (i < 0) {
  err = -EINVAL;
  goto out;
 } else {
  mode = &par->vbe_modes[i];
 }

 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0) {
  err = -ENXIO;
  goto out;
 }

 uvesafb_init_info(info, mode);

 if (!request_region(0x3c0, 32, "uvesafb")) {
  pr_err("request region 0x3c0-0x3e0 failed\n");
  err = -EIO;
  goto out_mode;
 }

 if (!request_mem_region(info->fix.smem_start, info->fix.smem_len,
    "uvesafb")) {
  pr_err("cannot reserve video memory at 0x%lx\n",
         info->fix.smem_start);
  err = -EIO;
  goto out_reg;
 }

 uvesafb_init_mtrr(info);
 uvesafb_ioremap(info);

 if (!info->screen_base) {
  pr_err("abort, cannot ioremap 0x%x bytes of video memory at 0x%lx\n",
         info->fix.smem_len, info->fix.smem_start);
  err = -EIO;
  goto out_mem;
 }

 platform_set_drvdata(dev, info);

 if (register_framebuffer(info) < 0) {
  pr_err("failed to register framebuffer device\n");
  err = -EINVAL;
  goto out_unmap;
 }

 pr_info("framebuffer at 0x%lx, mapped to 0x%p, using %dk, total %dk\n",
  info->fix.smem_start, info->screen_base,
  info->fix.smem_len / 1024, par->vbe_ib.total_memory * 64);
 fb_info(info, "%s frame buffer device\n", info->fix.id);

 err = sysfs_create_group(&dev->dev.kobj, &uvesafb_dev_attgrp);
 if (err != 0)
  fb_warn(info, "failed to register attributes\n");

 return 0;

out_unmap:
 iounmap(info->screen_base);
out_mem:
 release_mem_region(info->fix.smem_start, info->fix.smem_len);
out_reg:
 release_region(0x3c0, 32);
out_mode:
 if (!list_empty(&info->modelist))
  fb_destroy_modelist(&info->modelist);
 fb_destroy_modedb(info->monspecs.modedb);
 fb_dealloc_cmap(&info->cmap);
out:
 kfree(par->vbe_modes);

 framebuffer_release(info);
 return err;
}
