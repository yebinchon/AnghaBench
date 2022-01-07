
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; int * dev; } ;


 int FB_MAJOR ;
 int FB_MAX ;
 int MKDEV (int ,int) ;
 scalar_t__ WARN_ON (int) ;
 int device_destroy (int ,int ) ;
 int fb_class ;
 int pm_vt_switch_unregister (int *) ;
 struct fb_info** registered_fb ;
 int unbind_console (struct fb_info*) ;

void unlink_framebuffer(struct fb_info *fb_info)
{
 int i;

 i = fb_info->node;
 if (WARN_ON(i < 0 || i >= FB_MAX || registered_fb[i] != fb_info))
  return;

 if (!fb_info->dev)
  return;

 device_destroy(fb_class, MKDEV(FB_MAJOR, i));

 pm_vt_switch_unregister(fb_info->dev);

 unbind_console(fb_info);

 fb_info->dev = ((void*)0);
}
