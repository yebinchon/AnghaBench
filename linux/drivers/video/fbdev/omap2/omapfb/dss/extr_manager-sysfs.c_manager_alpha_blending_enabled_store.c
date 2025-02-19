
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int partial_alpha_enabled; } ;
struct omap_overlay_manager {int (* set_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;int (* apply ) (struct omap_overlay_manager*) ;int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;


 int ENODEV ;
 int FEAT_ALPHA_FIXED_ZORDER ;
 int dss_has_feature (int ) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub2 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub3 (struct omap_overlay_manager*) ;

__attribute__((used)) static ssize_t manager_alpha_blending_enabled_store(
  struct omap_overlay_manager *mgr,
  const char *buf, size_t size)
{
 struct omap_overlay_manager_info info;
 bool enable;
 int r;

 if(!dss_has_feature(FEAT_ALPHA_FIXED_ZORDER))
  return -ENODEV;

 r = strtobool(buf, &enable);
 if (r)
  return r;

 mgr->get_manager_info(mgr, &info);

 info.partial_alpha_enabled = enable;

 r = mgr->set_manager_info(mgr, &info);
 if (r)
  return r;

 r = mgr->apply(mgr);
 if (r)
  return r;

 return size;
}
