
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;


 int dss_check_settings_low (struct omap_overlay_manager*,int) ;

__attribute__((used)) static int dss_check_settings_apply(struct omap_overlay_manager *mgr)
{
 return dss_check_settings_low(mgr, 1);
}
