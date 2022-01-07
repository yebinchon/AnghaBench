
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neofb_par {int ref_count; int state; } ;
struct fb_info {struct neofb_par* par; } ;


 int EINVAL ;
 int restore_vga (int *) ;

__attribute__((used)) static int
neofb_release(struct fb_info *info, int user)
{
 struct neofb_par *par = info->par;

 if (!par->ref_count)
  return -EINVAL;

 if (par->ref_count == 1) {
  restore_vga(&par->state);
 }
 par->ref_count--;

 return 0;
}
