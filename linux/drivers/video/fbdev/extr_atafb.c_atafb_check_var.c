
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int dummy; } ;
struct fb_info {int dummy; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* decode_var ) (struct fb_var_screeninfo*,struct atafb_par*) ;int (* encode_var ) (struct fb_var_screeninfo*,struct atafb_par*) ;} ;


 TYPE_1__* fbhw ;
 int stub1 (struct fb_var_screeninfo*,struct atafb_par*) ;
 int stub2 (struct fb_var_screeninfo*,struct atafb_par*) ;

__attribute__((used)) static int atafb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 int err;
 struct atafb_par par;



 err = fbhw->decode_var(var, &par);
 if (err)
  return err;


 fbhw->encode_var(var, &par);
 return 0;
}
