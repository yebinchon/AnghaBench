
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfb_info {scalar_t__ registered; } ;
struct fb_info {int cmap; struct mfb_info* par; } ;


 int fb_dealloc_cmap (int *) ;
 int unmap_video_memory (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void uninstall_fb(struct fb_info *info)
{
 struct mfb_info *mfbi = info->par;

 if (!mfbi->registered)
  return;

 unregister_framebuffer(info);
 unmap_video_memory(info);
 fb_dealloc_cmap(&info->cmap);

 mfbi->registered = 0;
}
