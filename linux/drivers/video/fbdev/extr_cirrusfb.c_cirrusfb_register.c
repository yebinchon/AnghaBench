
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int activate; } ;
struct fb_info {int cmap; int device; TYPE_1__ var; int screen_base; struct cirrusfb_info* par; } ;
struct cirrusfb_info {scalar_t__ btype; } ;


 scalar_t__ BT_NONE ;
 int EINVAL ;
 int FB_ACTIVATE_NOW ;
 int assert (int) ;
 int cirrusfb_check_var (TYPE_1__*,struct fb_info*) ;
 int cirrusfb_set_fbinfo (struct fb_info*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (TYPE_1__*,struct fb_info*,int ,int *,int ,int *,int) ;
 int mode_option ;
 int register_framebuffer (struct fb_info*) ;

__attribute__((used)) static int cirrusfb_register(struct fb_info *info)
{
 struct cirrusfb_info *cinfo = info->par;
 int err;


 assert(cinfo->btype != BT_NONE);


 cirrusfb_set_fbinfo(info);

 dev_dbg(info->device, "(RAM start set to: 0x%p)\n", info->screen_base);

 err = fb_find_mode(&info->var, info, mode_option, ((void*)0), 0, ((void*)0), 8);
 if (!err) {
  dev_dbg(info->device, "wrong initial video mode\n");
  err = -EINVAL;
  goto err_dealloc_cmap;
 }

 info->var.activate = FB_ACTIVATE_NOW;

 err = cirrusfb_check_var(&info->var, info);
 if (err < 0) {

  dev_dbg(info->device,
   "choking on default var... umm, no good.\n");
  goto err_dealloc_cmap;
 }

 err = register_framebuffer(info);
 if (err < 0) {
  dev_err(info->device,
   "could not register fb device; err = %d!\n", err);
  goto err_dealloc_cmap;
 }

 return 0;

err_dealloc_cmap:
 fb_dealloc_cmap(&info->cmap);
 return err;
}
