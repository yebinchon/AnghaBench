
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int size; } ;
struct intelfb_info {scalar_t__ accel; TYPE_2__ fb; TYPE_3__* info; TYPE_1__* pdev; int initial_var; } ;
struct fb_var_screeninfo {int xres; int yres; int bits_per_pixel; int xres_virtual; int yres_virtual; int accel_flags; } ;
struct TYPE_8__ {int modedb_len; int * modedb; } ;
struct TYPE_7__ {TYPE_4__ monspecs; struct fb_var_screeninfo var; } ;
struct TYPE_5__ {int dev; } ;


 int DBG_MSG (char*,...) ;
 int EDID_LENGTH ;
 int ERR_MSG (char*) ;
 int FB_ACCELF_TEXT ;
 scalar_t__ FIXED_MODE (struct intelfb_info*) ;
 int GFP_KERNEL ;
 int INF_MSG (char*,int,int,int,int ) ;
 scalar_t__ PREFERRED_MODE ;
 int fb_edid_to_monspecs (int *,TYPE_4__*) ;
 int fb_find_mode (struct fb_var_screeninfo*,TYPE_3__*,scalar_t__,int *,int ,int *,int ) ;
 int * fb_firmware_edid (int *) ;
 int kfree (int *) ;
 int * kmemdup (int const*,int ,int ) ;
 int memcpy (struct fb_var_screeninfo*,int *,int) ;
 scalar_t__ mode ;
 int printk (char*) ;
 int var_to_refresh (struct fb_var_screeninfo*) ;

__attribute__((used)) static int intelfb_init_var(struct intelfb_info *dinfo)
{
 struct fb_var_screeninfo *var;
 int msrc = 0;

 DBG_MSG("intelfb_init_var\n");

 var = &dinfo->info->var;
 if (FIXED_MODE(dinfo)) {
         memcpy(var, &dinfo->initial_var,
         sizeof(struct fb_var_screeninfo));
  msrc = 5;
 } else {
  const u8 *edid_s = fb_firmware_edid(&dinfo->pdev->dev);
  u8 *edid_d = ((void*)0);

  if (edid_s) {
   edid_d = kmemdup(edid_s, EDID_LENGTH, GFP_KERNEL);

   if (edid_d) {
    fb_edid_to_monspecs(edid_d,
          &dinfo->info->monspecs);
    kfree(edid_d);
   }
  }

  if (mode) {
   printk("intelfb: Looking for mode in private "
          "database\n");
   msrc = fb_find_mode(var, dinfo->info, mode,
         dinfo->info->monspecs.modedb,
         dinfo->info->monspecs.modedb_len,
         ((void*)0), 0);

   if (msrc && msrc > 1) {
    printk("intelfb: No mode in private database, "
           "intelfb: looking for mode in global "
           "database ");
    msrc = fb_find_mode(var, dinfo->info, mode,
          ((void*)0), 0, ((void*)0), 0);

    if (msrc)
     msrc |= 8;
   }

  }

  if (!msrc)
   msrc = fb_find_mode(var, dinfo->info, PREFERRED_MODE,
         ((void*)0), 0, ((void*)0), 0);
 }

 if (!msrc) {
  ERR_MSG("Cannot find a suitable video mode.\n");
  return 1;
 }

 INF_MSG("Initial video mode is %dx%d-%d@%d.\n", var->xres, var->yres,
  var->bits_per_pixel, var_to_refresh(var));

 DBG_MSG("Initial video mode is from %d.\n", msrc);
 var->yres_virtual = var->yres;


 if (dinfo->accel)
  var->accel_flags |= FB_ACCELF_TEXT;
 else
  var->accel_flags &= ~FB_ACCELF_TEXT;

 return 0;
}
