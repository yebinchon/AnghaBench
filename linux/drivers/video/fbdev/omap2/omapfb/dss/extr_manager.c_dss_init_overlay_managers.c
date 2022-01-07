
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {char* name; int overlays; int id; int supported_outputs; int supported_displays; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_CHANNEL_LCD2 ;
 int OMAP_DSS_CHANNEL_LCD3 ;
 int dss_feat_get_num_mgrs () ;
 int dss_feat_get_supported_displays (int ) ;
 int dss_feat_get_supported_outputs (int ) ;
 struct omap_overlay_manager* kcalloc (int,int,int ) ;
 struct omap_overlay_manager* managers ;
 int num_managers ;

int dss_init_overlay_managers(void)
{
 int i;

 num_managers = dss_feat_get_num_mgrs();

 managers = kcalloc(num_managers, sizeof(struct omap_overlay_manager),
      GFP_KERNEL);

 BUG_ON(managers == ((void*)0));

 for (i = 0; i < num_managers; ++i) {
  struct omap_overlay_manager *mgr = &managers[i];

  switch (i) {
  case 0:
   mgr->name = "lcd";
   mgr->id = OMAP_DSS_CHANNEL_LCD;
   break;
  case 1:
   mgr->name = "tv";
   mgr->id = OMAP_DSS_CHANNEL_DIGIT;
   break;
  case 2:
   mgr->name = "lcd2";
   mgr->id = OMAP_DSS_CHANNEL_LCD2;
   break;
  case 3:
   mgr->name = "lcd3";
   mgr->id = OMAP_DSS_CHANNEL_LCD3;
   break;
  }

  mgr->supported_displays =
   dss_feat_get_supported_displays(mgr->id);
  mgr->supported_outputs =
   dss_feat_get_supported_outputs(mgr->id);

  INIT_LIST_HEAD(&mgr->overlays);
 }

 return 0;
}
