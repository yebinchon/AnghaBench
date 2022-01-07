
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int busy; int framedone_handler_data; int (* framedone_handler ) (int ) ;int updating; int enabled; } ;


 int complete_all (int *) ;
 int data_lock ;
 int dispc_mgr_get_framedone_irq (int) ;
 int dispc_mgr_go_busy (int) ;
 int dispc_mgr_is_enabled (int) ;
 int dss_feat_get_num_mgrs () ;
 int dss_set_go_bits () ;
 int dss_unregister_vsync_isr () ;
 int dss_write_regs () ;
 int extra_info_update_ongoing () ;
 int extra_updated_completion ;
 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;
 int mgr_clear_shadow_dirty (struct omap_overlay_manager*) ;
 int mgr_manual_update (struct omap_overlay_manager*) ;
 int need_isr () ;
 struct omap_overlay_manager* omap_dss_get_overlay_manager (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void dss_apply_irq_handler(void *data, u32 mask)
{
 const int num_mgrs = dss_feat_get_num_mgrs();
 int i;
 bool extra_updating;

 spin_lock(&data_lock);


 for (i = 0; i < num_mgrs; i++) {
  struct omap_overlay_manager *mgr;
  struct mgr_priv_data *mp;

  mgr = omap_dss_get_overlay_manager(i);
  mp = get_mgr_priv(mgr);

  if (!mp->enabled)
   continue;

  mp->updating = dispc_mgr_is_enabled(i);

  if (!mgr_manual_update(mgr)) {
   bool was_busy = mp->busy;
   mp->busy = dispc_mgr_go_busy(i);

   if (was_busy && !mp->busy)
    mgr_clear_shadow_dirty(mgr);
  }
 }

 dss_write_regs();
 dss_set_go_bits();

 extra_updating = extra_info_update_ongoing();
 if (!extra_updating)
  complete_all(&extra_updated_completion);


 for (i = 0; i < num_mgrs; i++) {
  struct omap_overlay_manager *mgr;
  struct mgr_priv_data *mp;

  mgr = omap_dss_get_overlay_manager(i);
  mp = get_mgr_priv(mgr);

  if (!mgr_manual_update(mgr) || !mp->framedone_handler)
   continue;

  if (mask & dispc_mgr_get_framedone_irq(i))
   mp->framedone_handler(mp->framedone_handler_data);
 }

 if (!need_isr())
  dss_unregister_vsync_isr();

 spin_unlock(&data_lock);
}
