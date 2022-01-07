
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int screen_buffer; } ;


 int fb_deferred_io_cleanup (struct fb_info*) ;
 int framebuffer_release (struct fb_info*) ;
 int vfree (int ) ;

void fbtft_framebuffer_release(struct fb_info *info)
{
 fb_deferred_io_cleanup(info);
 vfree(info->screen_buffer);
 framebuffer_release(info);
}
