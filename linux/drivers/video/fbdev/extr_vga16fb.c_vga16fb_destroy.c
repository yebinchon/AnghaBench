
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int cmap; int screen_base; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;

__attribute__((used)) static void vga16fb_destroy(struct fb_info *info)
{
 iounmap(info->screen_base);
 fb_dealloc_cmap(&info->cmap);

 framebuffer_release(info);
}
