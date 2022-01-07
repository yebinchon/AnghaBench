
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct sa1100fb_mach_info {int lccr3; scalar_t__ pixclock; int xres; int yres; int bpp; int ** rgb; int cmap_greyscale; int sync; int lower_margin; int upper_margin; int vsync_len; int right_margin; int left_margin; int hsync_len; } ;
struct TYPE_5__ {int smem_len; int accel; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int id; } ;
struct TYPE_4__ {int height; int width; int xres; int xres_virtual; int yres; int yres_virtual; int bits_per_pixel; scalar_t__ pixclock; int grayscale; int sync; int lower_margin; int upper_margin; int vsync_len; int right_margin; int left_margin; int hsync_len; int vmode; scalar_t__ accel_flags; int activate; scalar_t__ nonstd; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; int pseudo_palette; int monspecs; int flags; int * fbops; } ;
struct sa1100fb_info {int ctrlr_lock; int task; int ctrlr_wait; int ** rgb; struct sa1100fb_mach_info* inf; TYPE_3__ fb; scalar_t__ task_state; int state; int pseudo_palette; struct device* dev; } ;
struct device {int dummy; } ;


 int C_STARTUP ;
 int FBINFO_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int LCCR3_HorSnchL ;
 int LCCR3_VrtSnchL ;
 unsigned int NR_RGB ;
 size_t RGB_16 ;
 size_t RGB_4 ;
 size_t RGB_8 ;
 int SA1100_NAME ;
 int def_rgb_16 ;
 struct sa1100fb_mach_info* dev_get_platdata (struct device*) ;
 struct sa1100fb_info* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int monspecs ;
 int mutex_init (int *) ;
 int panic (char*) ;
 int rgb_4 ;
 int rgb_8 ;
 int sa1100fb_ops ;
 int sa1100fb_task ;
 int strcpy (int ,int ) ;

__attribute__((used)) static struct sa1100fb_info *sa1100fb_init_fbinfo(struct device *dev)
{
 struct sa1100fb_mach_info *inf = dev_get_platdata(dev);
 struct sa1100fb_info *fbi;
 unsigned i;

 fbi = devm_kzalloc(dev, sizeof(struct sa1100fb_info), GFP_KERNEL);
 if (!fbi)
  return ((void*)0);

 fbi->dev = dev;

 strcpy(fbi->fb.fix.id, SA1100_NAME);

 fbi->fb.fix.type = FB_TYPE_PACKED_PIXELS;
 fbi->fb.fix.type_aux = 0;
 fbi->fb.fix.xpanstep = 0;
 fbi->fb.fix.ypanstep = 0;
 fbi->fb.fix.ywrapstep = 0;
 fbi->fb.fix.accel = FB_ACCEL_NONE;

 fbi->fb.var.nonstd = 0;
 fbi->fb.var.activate = FB_ACTIVATE_NOW;
 fbi->fb.var.height = -1;
 fbi->fb.var.width = -1;
 fbi->fb.var.accel_flags = 0;
 fbi->fb.var.vmode = FB_VMODE_NONINTERLACED;

 fbi->fb.fbops = &sa1100fb_ops;
 fbi->fb.flags = FBINFO_DEFAULT;
 fbi->fb.monspecs = monspecs;
 fbi->fb.pseudo_palette = fbi->pseudo_palette;

 fbi->rgb[RGB_4] = &rgb_4;
 fbi->rgb[RGB_8] = &rgb_8;
 fbi->rgb[RGB_16] = &def_rgb_16;






 if (inf->lccr3 & (LCCR3_VrtSnchL|LCCR3_HorSnchL|0xff) ||
     inf->pixclock == 0)
  panic("sa1100fb error: invalid LCCR3 fields set or zero "
   "pixclock.");

 fbi->fb.var.xres = inf->xres;
 fbi->fb.var.xres_virtual = inf->xres;
 fbi->fb.var.yres = inf->yres;
 fbi->fb.var.yres_virtual = inf->yres;
 fbi->fb.var.bits_per_pixel = inf->bpp;
 fbi->fb.var.pixclock = inf->pixclock;
 fbi->fb.var.hsync_len = inf->hsync_len;
 fbi->fb.var.left_margin = inf->left_margin;
 fbi->fb.var.right_margin = inf->right_margin;
 fbi->fb.var.vsync_len = inf->vsync_len;
 fbi->fb.var.upper_margin = inf->upper_margin;
 fbi->fb.var.lower_margin = inf->lower_margin;
 fbi->fb.var.sync = inf->sync;
 fbi->fb.var.grayscale = inf->cmap_greyscale;
 fbi->state = C_STARTUP;
 fbi->task_state = (u_char)-1;
 fbi->fb.fix.smem_len = inf->xres * inf->yres *
       inf->bpp / 8;
 fbi->inf = inf;


 for (i = 0; i < NR_RGB; i++)
  if (inf->rgb[i])
   fbi->rgb[i] = inf->rgb[i];

 init_waitqueue_head(&fbi->ctrlr_wait);
 INIT_WORK(&fbi->task, sa1100fb_task);
 mutex_init(&fbi->ctrlr_lock);

 return fbi;
}
