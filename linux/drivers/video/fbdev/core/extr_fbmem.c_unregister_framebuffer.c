
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int do_unregister_framebuffer (struct fb_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int registration_lock ;

void
unregister_framebuffer(struct fb_info *fb_info)
{
 mutex_lock(&registration_lock);
 do_unregister_framebuffer(fb_info);
 mutex_unlock(&registration_lock);
}
