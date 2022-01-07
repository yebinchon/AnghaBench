
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager_info {int cpr_enable; } ;
struct omap_overlay_manager {int (* set_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;int (* apply ) (struct omap_overlay_manager*) ;int (* get_manager_info ) (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;} ;
typedef int ssize_t ;


 int ENODEV ;
 int FEAT_CPR ;
 int dss_has_feature (int ) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub2 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ;
 int stub3 (struct omap_overlay_manager*) ;

__attribute__((used)) static ssize_t manager_cpr_enable_store(struct omap_overlay_manager *mgr,
  const char *buf, size_t size)
{
 struct omap_overlay_manager_info info;
 int r;
 bool enable;

 if (!dss_has_feature(FEAT_CPR))
  return -ENODEV;

 r = strtobool(buf, &enable);
 if (r)
  return r;

 mgr->get_manager_info(mgr, &info);

 if (info.cpr_enable == enable)
  return size;

 info.cpr_enable = enable;

 r = mgr->set_manager_info(mgr, &info);
 if (r)
  return r;

 r = mgr->apply(mgr);
 if (r)
  return r;

 return size;
}
