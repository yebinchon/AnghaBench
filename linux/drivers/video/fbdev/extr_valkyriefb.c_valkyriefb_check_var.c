
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;
struct fb_par_valkyrie {int dummy; } ;
struct fb_info {int dummy; } ;


 int valkyrie_par_to_var (struct fb_par_valkyrie*,struct fb_var_screeninfo*) ;
 int valkyrie_var_to_par (struct fb_var_screeninfo*,struct fb_par_valkyrie*,struct fb_info*) ;

__attribute__((used)) static int
valkyriefb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 int err;
 struct fb_par_valkyrie par;

 if ((err = valkyrie_var_to_par(var, &par, info)))
  return err;
 valkyrie_par_to_var(&par, var);
 return 0;
}
