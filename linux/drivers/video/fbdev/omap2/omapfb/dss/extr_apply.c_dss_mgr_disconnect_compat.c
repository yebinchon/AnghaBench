
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int (* unset_output ) (struct omap_overlay_manager*) ;} ;
struct omap_dss_device {int dummy; } ;


 int stub1 (struct omap_overlay_manager*) ;

__attribute__((used)) static void dss_mgr_disconnect_compat(struct omap_overlay_manager *mgr,
  struct omap_dss_device *dst)
{
 mgr->unset_output(mgr);
}
