
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int count; } ;


 int ENODEV ;
 struct fb_info* ERR_PTR (int ) ;
 unsigned int FB_MAX ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fb_info** registered_fb ;
 int registration_lock ;

__attribute__((used)) static struct fb_info *get_fb_info(unsigned int idx)
{
 struct fb_info *fb_info;

 if (idx >= FB_MAX)
  return ERR_PTR(-ENODEV);

 mutex_lock(&registration_lock);
 fb_info = registered_fb[idx];
 if (fb_info)
  atomic_inc(&fb_info->count);
 mutex_unlock(&registration_lock);

 return fb_info;
}
