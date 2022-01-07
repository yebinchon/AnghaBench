
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {scalar_t__ ref_count; int open_lock; } ;
struct fb_info {struct i740fb_par* par; } ;


 int EINVAL ;
 int fb_err (struct fb_info*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i740fb_release(struct fb_info *info, int user)
{
 struct i740fb_par *par = info->par;

 mutex_lock(&(par->open_lock));
 if (par->ref_count == 0) {
  fb_err(info, "release called with zero refcount\n");
  mutex_unlock(&(par->open_lock));
  return -EINVAL;
 }

 par->ref_count--;
 mutex_unlock(&(par->open_lock));

 return 0;
}
