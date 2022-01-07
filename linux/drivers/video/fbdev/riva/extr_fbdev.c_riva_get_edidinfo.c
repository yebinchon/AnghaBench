
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct riva_par {int FlatPanel; int EDID; } ;
struct fb_var_screeninfo {int dummy; } ;
struct TYPE_2__ {int input; int modedb_len; int modedb; } ;
struct fb_info {TYPE_1__ monspecs; int modelist; struct riva_par* par; } ;


 int FB_DISP_DDI ;
 int fb_edid_to_monspecs (int ,TYPE_1__*) ;
 int fb_videomode_to_modelist (int ,int ,int *) ;
 int riva_update_default_var (struct fb_var_screeninfo*,struct fb_info*) ;
 struct fb_var_screeninfo rivafb_default_var ;

__attribute__((used)) static void riva_get_edidinfo(struct fb_info *info)
{
 struct fb_var_screeninfo *var = &rivafb_default_var;
 struct riva_par *par = info->par;

 fb_edid_to_monspecs(par->EDID, &info->monspecs);
 fb_videomode_to_modelist(info->monspecs.modedb, info->monspecs.modedb_len,
     &info->modelist);
 riva_update_default_var(var, info);


 if (info->monspecs.input & FB_DISP_DDI)
  par->FlatPanel = 1;
}
