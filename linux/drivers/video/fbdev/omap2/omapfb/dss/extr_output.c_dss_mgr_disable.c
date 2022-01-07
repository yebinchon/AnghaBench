
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct omap_overlay_manager*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*) ;

void dss_mgr_disable(struct omap_overlay_manager *mgr)
{
 dss_mgr_ops->disable(mgr);
}
