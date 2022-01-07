
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct omap_overlay_manager*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*) ;

int dss_mgr_enable(struct omap_overlay_manager *mgr)
{
 return dss_mgr_ops->enable(mgr);
}
