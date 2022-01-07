
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int activate; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* decode_var ) (struct fb_var_screeninfo*,struct atafb_par*) ;int (* encode_var ) (struct fb_var_screeninfo*,struct atafb_par*) ;} ;


 int FB_ACTIVATE_MASK ;
 int FB_ACTIVATE_NOW ;
 int ata_set_par (struct atafb_par*) ;
 TYPE_1__* fbhw ;
 int stub1 (struct fb_var_screeninfo*,struct atafb_par*) ;
 int stub2 (struct fb_var_screeninfo*,struct atafb_par*) ;

__attribute__((used)) static int do_fb_set_var(struct fb_var_screeninfo *var, int isactive)
{
 int err, activate;
 struct atafb_par par;

 err = fbhw->decode_var(var, &par);
 if (err)
  return err;
 activate = var->activate;
 if (((var->activate & FB_ACTIVATE_MASK) == FB_ACTIVATE_NOW) && isactive)
  ata_set_par(&par);
 fbhw->encode_var(var, &par);
 var->activate = activate;
 return 0;
}
