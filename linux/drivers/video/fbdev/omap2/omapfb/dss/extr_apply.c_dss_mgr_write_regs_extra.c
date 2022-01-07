
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int id; } ;
struct mgr_priv_data {int extra_info_dirty; int shadow_extra_info_dirty; scalar_t__ updating; int lcd_config; int timings; } ;


 int DSSDBG (char*,int ) ;
 int dispc_mgr_set_lcd_config (int ,int *) ;
 int dispc_mgr_set_timings (int ,int *) ;
 scalar_t__ dss_mgr_is_lcd (int ) ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static void dss_mgr_write_regs_extra(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp = get_mgr_priv(mgr);

 DSSDBG("writing mgr %d regs extra\n", mgr->id);

 if (!mp->extra_info_dirty)
  return;

 dispc_mgr_set_timings(mgr->id, &mp->timings);


 if (dss_mgr_is_lcd(mgr->id))
  dispc_mgr_set_lcd_config(mgr->id, &mp->lcd_config);

 mp->extra_info_dirty = 0;
 if (mp->updating)
  mp->shadow_extra_info_dirty = 1;
}
