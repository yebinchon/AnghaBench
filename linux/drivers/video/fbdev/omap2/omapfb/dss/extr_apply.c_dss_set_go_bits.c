
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int id; } ;
struct mgr_priv_data {int busy; int enabled; } ;
struct TYPE_2__ {int irq_enabled; } ;


 int dispc_mgr_go (int ) ;
 TYPE_1__ dss_data ;
 int dss_register_vsync_isr () ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 scalar_t__ mgr_manual_update (struct omap_overlay_manager*) ;
 int need_go (struct omap_overlay_manager*) ;
 scalar_t__ need_isr () ;
 int omap_dss_get_num_overlay_managers () ;
 struct omap_overlay_manager* omap_dss_get_overlay_manager (int) ;

__attribute__((used)) static void dss_set_go_bits(void)
{
 const int num_mgrs = omap_dss_get_num_overlay_managers();
 int i;

 for (i = 0; i < num_mgrs; ++i) {
  struct omap_overlay_manager *mgr;
  struct mgr_priv_data *mp;

  mgr = omap_dss_get_overlay_manager(i);
  mp = get_mgr_priv(mgr);

  if (!mp->enabled || mgr_manual_update(mgr) || mp->busy)
   continue;

  if (!need_go(mgr))
   continue;

  mp->busy = 1;

  if (!dss_data.irq_enabled && need_isr())
   dss_register_vsync_isr();

  dispc_mgr_go(mgr->id);
 }

}
