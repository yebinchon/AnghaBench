
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;


 struct omap_overlay_manager* managers ;
 int num_managers ;

struct omap_overlay_manager *omap_dss_get_overlay_manager(int num)
{
 if (num >= num_managers)
  return ((void*)0);

 return &managers[num];
}
