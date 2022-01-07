
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int open_count; int initial_state; } ;
struct fb_info {struct nvidia_par* par; } ;


 int EINVAL ;
 int nvidia_write_regs (struct nvidia_par*,int *) ;
 int restore_vga_x86 (struct nvidia_par*) ;

__attribute__((used)) static int nvidiafb_release(struct fb_info *info, int user)
{
 struct nvidia_par *par = info->par;
 int err = 0;

 if (!par->open_count) {
  err = -EINVAL;
  goto done;
 }

 if (par->open_count == 1) {
  nvidia_write_regs(par, &par->initial_state);
  restore_vga_x86(par);
 }

 par->open_count--;
done:
 return err;
}
