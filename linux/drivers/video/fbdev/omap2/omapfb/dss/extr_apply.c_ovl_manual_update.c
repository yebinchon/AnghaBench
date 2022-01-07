
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay {int manager; } ;
struct TYPE_2__ {int stallmode; } ;
struct mgr_priv_data {TYPE_1__ lcd_config; } ;


 struct mgr_priv_data* get_mgr_priv (int ) ;

__attribute__((used)) static bool ovl_manual_update(struct omap_overlay *ovl)
{
 struct mgr_priv_data *mp = get_mgr_priv(ovl->manager);

 return mp->lcd_config.stallmode;
}
