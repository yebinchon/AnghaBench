
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int open_count; int initial_state; } ;
struct fb_info {struct nvidia_par* par; } ;


 int nvidia_save_vga (struct nvidia_par*,int *) ;
 int save_vga_x86 (struct nvidia_par*) ;

__attribute__((used)) static int nvidiafb_open(struct fb_info *info, int user)
{
 struct nvidia_par *par = info->par;

 if (!par->open_count) {
  save_vga_x86(par);
  nvidia_save_vga(par, &par->initial_state);
 }

 par->open_count++;
 return 0;
}
