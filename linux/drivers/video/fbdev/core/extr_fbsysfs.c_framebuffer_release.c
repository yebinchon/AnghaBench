
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct fb_info* apertures; } ;


 int kfree (struct fb_info*) ;

void framebuffer_release(struct fb_info *info)
{
 if (!info)
  return;
 kfree(info->apertures);
 kfree(info);
}
