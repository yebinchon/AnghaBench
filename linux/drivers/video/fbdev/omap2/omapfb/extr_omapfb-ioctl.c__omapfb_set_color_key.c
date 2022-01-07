
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_color_key {int key_type; int trans_key; int background; } ;
struct omap_overlay_manager_info {int trans_enabled; int trans_key_type; int trans_key; int default_color; } ;
struct omap_overlay_manager {size_t id; int (* set_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;int (* apply ) (struct omap_overlay_manager*) ;int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef enum omap_dss_trans_key_type { ____Placeholder_omap_dss_trans_key_type } omap_dss_trans_key_type ;


 int EINVAL ;
 int OMAPFB_COLOR_KEY_DISABLED ;


 int OMAP_DSS_COLOR_KEY_GFX_DST ;
 int OMAP_DSS_COLOR_KEY_VID_SRC ;
 struct omapfb_color_key* omapfb_color_keys ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub2 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub3 (struct omap_overlay_manager*) ;
 int stub4 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub5 (struct omap_overlay_manager*) ;

__attribute__((used)) static int _omapfb_set_color_key(struct omap_overlay_manager *mgr,
  struct omapfb_color_key *ck)
{
 struct omap_overlay_manager_info info;
 enum omap_dss_trans_key_type kt;
 int r;

 mgr->get_manager_info(mgr, &info);

 if (ck->key_type == OMAPFB_COLOR_KEY_DISABLED) {
  info.trans_enabled = 0;
  omapfb_color_keys[mgr->id] = *ck;

  r = mgr->set_manager_info(mgr, &info);
  if (r)
   return r;

  r = mgr->apply(mgr);

  return r;
 }

 switch (ck->key_type) {
 case 129:
  kt = OMAP_DSS_COLOR_KEY_GFX_DST;
  break;
 case 128:
  kt = OMAP_DSS_COLOR_KEY_VID_SRC;
  break;
 default:
  return -EINVAL;
 }

 info.default_color = ck->background;
 info.trans_key = ck->trans_key;
 info.trans_key_type = kt;
 info.trans_enabled = 1;

 omapfb_color_keys[mgr->id] = *ck;

 r = mgr->set_manager_info(mgr, &info);
 if (r)
  return r;

 r = mgr->apply(mgr);

 return r;
}
