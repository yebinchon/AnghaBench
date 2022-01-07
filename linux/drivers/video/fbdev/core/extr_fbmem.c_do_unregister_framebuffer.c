
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ addr; } ;
struct fb_info {size_t node; int modelist; TYPE_1__ pixmap; } ;
struct fb_event {struct fb_info* info; } ;


 int FB_EVENT_FB_UNREGISTERED ;
 int FB_PIXMAP_DEFAULT ;
 int console_lock () ;
 int console_unlock () ;
 int fb_cleanup_device (struct fb_info*) ;
 int fb_destroy_modelist (int *) ;
 int fb_notifier_call_chain (int ,struct fb_event*) ;
 int fbcon_fb_unregistered (struct fb_info*) ;
 int kfree (scalar_t__) ;
 int num_registered_fb ;
 int put_fb_info (struct fb_info*) ;
 int ** registered_fb ;
 int unlink_framebuffer (struct fb_info*) ;

__attribute__((used)) static void do_unregister_framebuffer(struct fb_info *fb_info)
{
 unlink_framebuffer(fb_info);
 if (fb_info->pixmap.addr &&
     (fb_info->pixmap.flags & FB_PIXMAP_DEFAULT))
  kfree(fb_info->pixmap.addr);
 fb_destroy_modelist(&fb_info->modelist);
 registered_fb[fb_info->node] = ((void*)0);
 num_registered_fb--;
 fb_cleanup_device(fb_info);







 console_lock();
 fbcon_fb_unregistered(fb_info);
 console_unlock();


 put_fb_info(fb_info);
}
