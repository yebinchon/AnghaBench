
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {scalar_t__ num_overlays; struct omap_overlay** overlays; } ;
struct omap_overlay {struct omap_dss_device* (* get_device ) (struct omap_overlay*) ;} ;
struct omap_dss_device {int dummy; } ;
struct fb_info {int dummy; } ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 struct omap_dss_device* stub1 (struct omap_overlay*) ;

__attribute__((used)) static inline struct omap_dss_device *fb2display(struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omap_overlay *ovl;



 if (ofbi->num_overlays == 0)
  return ((void*)0);

 ovl = ofbi->overlays[0];

 return ovl->get_device(ovl);
}
