
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct dss_lcd_mgr_config {int dummy; } ;
struct TYPE_2__ {int (* set_lcd_config ) (struct omap_overlay_manager*,struct dss_lcd_mgr_config const*) ;} ;


 TYPE_1__* dss_mgr_ops ;
 int stub1 (struct omap_overlay_manager*,struct dss_lcd_mgr_config const*) ;

void dss_mgr_set_lcd_config(struct omap_overlay_manager *mgr,
  const struct dss_lcd_mgr_config *config)
{
 dss_mgr_ops->set_lcd_config(mgr, config);
}
