
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void cleanup_fb_device(struct fb_info *info)
{
 if (info) {
  unregister_framebuffer(info);
  fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
 }
}
