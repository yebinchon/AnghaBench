
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay {char* name; int id; int supported_modes; int caps; } ;


 int BUG_ON (int ) ;
 int DSSERR (char*) ;
 int GFP_KERNEL ;
 int OMAP_DSS_GFX ;
 int OMAP_DSS_VIDEO1 ;
 int OMAP_DSS_VIDEO2 ;
 int OMAP_DSS_VIDEO3 ;
 int dss_feat_get_num_ovls () ;
 int dss_feat_get_overlay_caps (int ) ;
 int dss_feat_get_supported_color_modes (int ) ;
 int dss_overlay_kobj_init (struct omap_overlay*,struct platform_device*) ;
 struct omap_overlay* kcalloc (int,int,int ) ;
 int num_overlays ;
 struct omap_overlay* overlays ;

void dss_init_overlays(struct platform_device *pdev)
{
 int i, r;

 num_overlays = dss_feat_get_num_ovls();

 overlays = kcalloc(num_overlays, sizeof(struct omap_overlay),
      GFP_KERNEL);

 BUG_ON(overlays == ((void*)0));

 for (i = 0; i < num_overlays; ++i) {
  struct omap_overlay *ovl = &overlays[i];

  switch (i) {
  case 0:
   ovl->name = "gfx";
   ovl->id = OMAP_DSS_GFX;
   break;
  case 1:
   ovl->name = "vid1";
   ovl->id = OMAP_DSS_VIDEO1;
   break;
  case 2:
   ovl->name = "vid2";
   ovl->id = OMAP_DSS_VIDEO2;
   break;
  case 3:
   ovl->name = "vid3";
   ovl->id = OMAP_DSS_VIDEO3;
   break;
  }

  ovl->caps = dss_feat_get_overlay_caps(ovl->id);
  ovl->supported_modes =
   dss_feat_get_supported_color_modes(ovl->id);

  r = dss_overlay_kobj_init(ovl, pdev);
  if (r)
   DSSERR("failed to create sysfs file\n");
 }
}
