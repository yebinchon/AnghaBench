
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int user_info_dirty; int info_dirty; int user_info; int info; } ;


 struct mgr_priv_data* get_mgr_priv (struct omap_overlay_manager*) ;

__attribute__((used)) static void omap_dss_mgr_apply_mgr(struct omap_overlay_manager *mgr)
{
 struct mgr_priv_data *mp;

 mp = get_mgr_priv(mgr);

 if (!mp->user_info_dirty)
  return;

 mp->user_info_dirty = 0;
 mp->info_dirty = 1;
 mp->info = mp->user_info;
}
