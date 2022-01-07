
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_info {int num_overlays; struct omap_overlay** overlays; } ;
struct omapfb2_device {int num_fbs; int * fbs; } ;
struct omap_overlay {int dummy; } ;


 struct omapfb_info* FB2OFB (int ) ;

__attribute__((used)) static struct omapfb_info *get_overlay_fb(struct omapfb2_device *fbdev,
  struct omap_overlay *ovl)
{
 int i, t;

 for (i = 0; i < fbdev->num_fbs; i++) {
  struct omapfb_info *ofbi = FB2OFB(fbdev->fbs[i]);

  for (t = 0; t < ofbi->num_overlays; t++) {
   if (ofbi->overlays[t] == ovl)
    return ofbi;
  }
 }

 return ((void*)0);
}
