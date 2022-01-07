
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int var; } ;
struct fb_fix_screeninfo {int dummy; } ;
struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* decode_var ) (int *,struct atafb_par*) ;int (* encode_fix ) (struct fb_fix_screeninfo*,struct atafb_par*) ;} ;


 TYPE_1__* fbhw ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int stub1 (int *,struct atafb_par*) ;
 int stub2 (struct fb_fix_screeninfo*,struct atafb_par*) ;

__attribute__((used)) static int atafb_get_fix(struct fb_fix_screeninfo *fix, struct fb_info *info)
{
 struct atafb_par par;
 int err;

 err = fbhw->decode_var(&info->var, &par);
 if (err)
  return err;
 memset(fix, 0, sizeof(struct fb_fix_screeninfo));
 err = fbhw->encode_fix(fix, &par);
 return err;
}
