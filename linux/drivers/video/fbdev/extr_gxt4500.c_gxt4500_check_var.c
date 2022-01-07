
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gxt4500_par {int pixfmt; } ;
struct fb_var_screeninfo {int pixclock; } ;
struct fb_info {scalar_t__ par; } ;


 int calc_pixclock (struct gxt4500_par*) ;
 int gxt4500_unpack_pixfmt (struct fb_var_screeninfo*,int ) ;
 int gxt4500_var_to_par (struct fb_var_screeninfo*,struct gxt4500_par*) ;

__attribute__((used)) static int gxt4500_check_var(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 struct gxt4500_par par;
 int err;

 par = *(struct gxt4500_par *)info->par;
 err = gxt4500_var_to_par(var, &par);
 if (!err) {
  var->pixclock = calc_pixclock(&par);
  gxt4500_unpack_pixfmt(var, par.pixfmt);
 }
 return err;
}
