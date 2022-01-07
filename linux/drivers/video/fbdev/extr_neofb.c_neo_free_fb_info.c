
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;

__attribute__((used)) static void neo_free_fb_info(struct fb_info *info)
{
 if (info) {



  fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
 }
}
