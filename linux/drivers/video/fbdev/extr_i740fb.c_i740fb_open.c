
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {int open_lock; int ref_count; } ;
struct fb_info {struct i740fb_par* par; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i740fb_open(struct fb_info *info, int user)
{
 struct i740fb_par *par = info->par;

 mutex_lock(&(par->open_lock));
 par->ref_count++;
 mutex_unlock(&(par->open_lock));

 return 0;
}
