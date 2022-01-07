
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int device; int cmap; struct cirrusfb_info* par; } ;
struct cirrusfb_info {int (* unmap ) (struct fb_info*) ;} ;


 int dev_dbg (int ,char*) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int stub1 (struct fb_info*) ;
 int switch_monitor (struct cirrusfb_info*,int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void cirrusfb_cleanup(struct fb_info *info)
{
 struct cirrusfb_info *cinfo = info->par;

 switch_monitor(cinfo, 0);
 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 dev_dbg(info->device, "Framebuffer unregistered\n");
 cinfo->unmap(info);
 framebuffer_release(info);
}
