
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int dummy; } ;
struct TYPE_2__ {int stallmode; } ;
struct mgr_priv_data {TYPE_1__ lcd_config; } ;


 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static bool mgr_manual_update(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 return mp->lcd_config.stallmode;
}
