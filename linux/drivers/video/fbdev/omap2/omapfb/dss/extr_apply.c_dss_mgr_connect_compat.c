
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int (* set_output ) (struct omap_overlay_manager*,struct omap_dss_device*) ;} ;
struct omap_dss_device {int dummy; } ;


 int stub1 (struct omap_overlay_manager*,struct omap_dss_device*) ;

__attribute__((used)) static int dss_mgr_connect_compat(struct omap_overlay_manager *mgr,
  struct omap_dss_device *dst)
{
 return mgr->set_output(mgr, dst);
}
