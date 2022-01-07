
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fb_info {int ref_count; int open_lock; int state; } ;
struct fb_info {struct s3fb_info* par; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_vga (int *) ;

__attribute__((used)) static int s3fb_release(struct fb_info *info, int user)
{
 struct s3fb_info *par = info->par;

 mutex_lock(&(par->open_lock));
 if (par->ref_count == 0) {
  mutex_unlock(&(par->open_lock));
  return -EINVAL;
 }

 if (par->ref_count == 1)
  restore_vga(&(par->state));

 par->ref_count--;
 mutex_unlock(&(par->open_lock));

 return 0;
}
