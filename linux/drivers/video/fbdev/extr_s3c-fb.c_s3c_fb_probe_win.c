
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct s3c_fb_win_variant {int palette_sz; scalar_t__ palette_16bpp; } ;
struct TYPE_12__ {int length; scalar_t__ offset; } ;
struct TYPE_11__ {int offset; int length; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_13__ {TYPE_5__ b; TYPE_4__ g; TYPE_3__ r; } ;
struct s3c_fb_win {unsigned int index; struct s3c_fb_win_variant variant; int pseudo_palette; TYPE_6__ palette; int * palette_buffer; struct s3c_fb_pd_win* windata; struct s3c_fb* parent; struct fb_info* fbinfo; } ;
struct s3c_fb_pd_win {scalar_t__ max_bpp; scalar_t__ xres; scalar_t__ yres; int default_bpp; } ;
struct TYPE_8__ {int wait; } ;
struct s3c_fb {int dev; TYPE_2__* pdata; TYPE_1__ vsync_info; } ;
struct fb_videomode {scalar_t__ xres; scalar_t__ yres; } ;
struct fb_var_screeninfo {int bits_per_pixel; int vmode; int activate; } ;
struct TYPE_14__ {int id; int accel; int type; } ;
struct fb_info {TYPE_7__ fix; int cmap; struct fb_var_screeninfo var; int * pseudo_palette; int flags; int * fbops; struct s3c_fb_win* par; } ;
struct TYPE_9__ {struct fb_videomode* vtiming; struct s3c_fb_pd_win** win; } ;


 int ENOMEM ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 int WARN_ON (int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int,int ) ;
 int fb_alloc_cmap (int *,int,int) ;
 int fb_set_cmap (int *,struct fb_info*) ;
 int fb_videomode_to_var (struct fb_var_screeninfo*,struct fb_videomode*) ;
 struct fb_info* framebuffer_alloc (int,int ) ;
 int init_waitqueue_head (int *) ;
 int register_framebuffer (struct fb_info*) ;
 int s3c_fb_alloc_memory (struct s3c_fb*,struct s3c_fb_win*) ;
 int s3c_fb_check_var (struct fb_var_screeninfo*,struct fb_info*) ;
 int s3c_fb_ops ;
 int s3c_fb_set_par (struct fb_info*) ;

__attribute__((used)) static int s3c_fb_probe_win(struct s3c_fb *sfb, unsigned int win_no,
       struct s3c_fb_win_variant *variant,
       struct s3c_fb_win **res)
{
 struct fb_var_screeninfo *var;
 struct fb_videomode initmode;
 struct s3c_fb_pd_win *windata;
 struct s3c_fb_win *win;
 struct fb_info *fbinfo;
 int palette_size;
 int ret;

 dev_dbg(sfb->dev, "probing window %d, variant %p\n", win_no, variant);

 init_waitqueue_head(&sfb->vsync_info.wait);

 palette_size = variant->palette_sz * 4;

 fbinfo = framebuffer_alloc(sizeof(struct s3c_fb_win) +
       palette_size * sizeof(u32), sfb->dev);
 if (!fbinfo)
  return -ENOMEM;

 windata = sfb->pdata->win[win_no];
 initmode = *sfb->pdata->vtiming;

 WARN_ON(windata->max_bpp == 0);
 WARN_ON(windata->xres == 0);
 WARN_ON(windata->yres == 0);

 win = fbinfo->par;
 *res = win;
 var = &fbinfo->var;
 win->variant = *variant;
 win->fbinfo = fbinfo;
 win->parent = sfb;
 win->windata = windata;
 win->index = win_no;
 win->palette_buffer = (u32 *)(win + 1);

 ret = s3c_fb_alloc_memory(sfb, win);
 if (ret) {
  dev_err(sfb->dev, "failed to allocate display memory\n");
  return ret;
 }


 if (win->variant.palette_16bpp) {

  win->palette.r.offset = 11;
  win->palette.r.length = 5;
  win->palette.g.offset = 5;
  win->palette.g.length = 6;
  win->palette.b.offset = 0;
  win->palette.b.length = 5;

 } else {

  win->palette.r.offset = 16;
  win->palette.r.length = 8;
  win->palette.g.offset = 8;
  win->palette.g.length = 8;
  win->palette.b.offset = 0;
  win->palette.b.length = 8;
 }


 initmode.xres = windata->xres;
 initmode.yres = windata->yres;
 fb_videomode_to_var(&fbinfo->var, &initmode);

 fbinfo->fix.type = FB_TYPE_PACKED_PIXELS;
 fbinfo->fix.accel = FB_ACCEL_NONE;
 fbinfo->var.activate = FB_ACTIVATE_NOW;
 fbinfo->var.vmode = FB_VMODE_NONINTERLACED;
 fbinfo->var.bits_per_pixel = windata->default_bpp;
 fbinfo->fbops = &s3c_fb_ops;
 fbinfo->flags = FBINFO_FLAG_DEFAULT;
 fbinfo->pseudo_palette = &win->pseudo_palette;



 ret = s3c_fb_check_var(&fbinfo->var, fbinfo);
 if (ret < 0) {
  dev_err(sfb->dev, "check_var failed on initial video params\n");
  return ret;
 }



 ret = fb_alloc_cmap(&fbinfo->cmap, win->variant.palette_sz, 1);
 if (ret == 0)
  fb_set_cmap(&fbinfo->cmap, fbinfo);
 else
  dev_err(sfb->dev, "failed to allocate fb cmap\n");

 s3c_fb_set_par(fbinfo);

 dev_dbg(sfb->dev, "about to register framebuffer\n");



 ret = register_framebuffer(fbinfo);
 if (ret < 0) {
  dev_err(sfb->dev, "failed to register framebuffer\n");
  return ret;
 }

 dev_info(sfb->dev, "window %d: fb %s\n", win_no, fbinfo->fix.id);

 return 0;
}
