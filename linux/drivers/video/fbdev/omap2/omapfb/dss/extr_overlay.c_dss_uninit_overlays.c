
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay {int dummy; } ;


 int dss_overlay_kobj_uninit (struct omap_overlay*) ;
 int kfree (struct omap_overlay*) ;
 int num_overlays ;
 struct omap_overlay* overlays ;

void dss_uninit_overlays(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < num_overlays; ++i) {
  struct omap_overlay *ovl = &overlays[i];
  dss_overlay_kobj_uninit(ovl);
 }

 kfree(overlays);
 overlays = ((void*)0);
 num_overlays = 0;
}
