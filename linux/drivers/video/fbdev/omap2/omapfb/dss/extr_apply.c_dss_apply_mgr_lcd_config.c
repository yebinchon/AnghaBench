
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct dss_lcd_mgr_config {int dummy; } ;
struct mgr_priv_data {int extra_info_dirty; struct dss_lcd_mgr_config lcd_config; } ;


 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static void dss_apply_mgr_lcd_config(struct omap_overlay_manager *mgr,
  const struct dss_lcd_mgr_config *config)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 mp->lcd_config = *config;
 mp->extra_info_dirty = 1;
}
