
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvesafb_par {int vbe_state_saved; int vbe_state_orig; int vbe_modes; int mtrr_handle; } ;
struct TYPE_4__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int modedb; } ;
struct TYPE_5__ {int smem_len; int smem_start; } ;
struct fb_info {int cmap; TYPE_3__ monspecs; TYPE_2__ fix; int screen_base; struct uvesafb_par* par; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_destroy_modedb (int ) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int release_region (int,int) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_framebuffer (struct fb_info*) ;
 int uvesafb_dev_attgrp ;

__attribute__((used)) static int uvesafb_remove(struct platform_device *dev)
{
 struct fb_info *info = platform_get_drvdata(dev);

 if (info) {
  struct uvesafb_par *par = info->par;

  sysfs_remove_group(&dev->dev.kobj, &uvesafb_dev_attgrp);
  unregister_framebuffer(info);
  release_region(0x3c0, 32);
  iounmap(info->screen_base);
  arch_phys_wc_del(par->mtrr_handle);
  release_mem_region(info->fix.smem_start, info->fix.smem_len);
  fb_destroy_modedb(info->monspecs.modedb);
  fb_dealloc_cmap(&info->cmap);

  kfree(par->vbe_modes);
  kfree(par->vbe_state_orig);
  kfree(par->vbe_state_saved);

  framebuffer_release(info);
 }
 return 0;
}
