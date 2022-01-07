
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int region; int id; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;


 int DBG (char*,int ) ;
 struct omapfb_info* FB2OFB (struct fb_info*) ;
 int check_fb_var (struct fb_info*,struct fb_var_screeninfo*) ;
 int omapfb_get_mem_region (int ) ;
 int omapfb_put_mem_region (int ) ;

__attribute__((used)) static int omapfb_check_var(struct fb_var_screeninfo *var, struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 int r;

 DBG("check_var(%d)\n", FB2OFB(fbi)->id);

 omapfb_get_mem_region(ofbi->region);

 r = check_fb_var(fbi, var);

 omapfb_put_mem_region(ofbi->region);

 return r;
}
