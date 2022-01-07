
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arkfb_info* par; } ;
struct arkfb_info {int ref_count; int open_lock; int dac; int state; } ;


 int DAC_PSEUDO8_8 ;
 int EINVAL ;
 int dac_set_mode (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_vga (int *) ;

__attribute__((used)) static int arkfb_release(struct fb_info *info, int user)
{
 struct arkfb_info *par = info->par;

 mutex_lock(&(par->open_lock));
 if (par->ref_count == 0) {
  mutex_unlock(&(par->open_lock));
  return -EINVAL;
 }

 if (par->ref_count == 1) {
  restore_vga(&(par->state));
  dac_set_mode(par->dac, DAC_PSEUDO8_8);
 }

 par->ref_count--;
 mutex_unlock(&(par->open_lock));

 return 0;
}
