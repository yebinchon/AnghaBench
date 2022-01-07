
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct TYPE_2__ {int (* unregister_framedone_handler ) (struct omap_overlay_manager*,void (*) (void*),void*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*,void (*) (void*),void*) ;

void dss_mgr_unregister_framedone_handler(struct omap_overlay_manager *mgr,
  void (*handler)(void *), void *data)
{
 dss_mgr_ops->unregister_framedone_handler(mgr, handler, data);
}
