
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int (* disconnect ) (struct omap_overlay_manager*,struct omap_dss_device*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*,struct omap_dss_device*) ;

void dss_mgr_disconnect(struct omap_overlay_manager *mgr,
  struct omap_dss_device *dst)
{
 dss_mgr_ops->disconnect(mgr, dst);
}
