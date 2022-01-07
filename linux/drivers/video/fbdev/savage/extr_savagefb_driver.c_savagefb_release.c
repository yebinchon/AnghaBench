
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int open_count; int open_lock; int vgastate; int initial; } ;
struct fb_info {struct savagefb_par* par; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_vga (int *) ;
 int savage_set_default_par (struct savagefb_par*,int *) ;

__attribute__((used)) static int savagefb_release(struct fb_info *info, int user)
{
 struct savagefb_par *par = info->par;

 mutex_lock(&par->open_lock);

 if (par->open_count == 1) {
  savage_set_default_par(par, &par->initial);
  restore_vga(&par->vgastate);
 }

 par->open_count--;
 mutex_unlock(&par->open_lock);
 return 0;
}
