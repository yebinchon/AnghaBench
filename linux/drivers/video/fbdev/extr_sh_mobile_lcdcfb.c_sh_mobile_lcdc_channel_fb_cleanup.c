
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int sglist; struct fb_info* info; } ;
struct fb_info {int cmap; int device; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int vfree (int ) ;

__attribute__((used)) static void
sh_mobile_lcdc_channel_fb_cleanup(struct sh_mobile_lcdc_chan *ch)
{
 struct fb_info *info = ch->info;

 if (!info || !info->device)
  return;

 vfree(ch->sglist);

 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
}
