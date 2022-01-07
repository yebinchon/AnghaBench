
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_info {int color_mode; } ;
struct ovl_priv_data {int enabled; int info_dirty; int shadow_info_dirty; struct omap_overlay_info info; } ;
struct omap_overlay {int id; int manager; } ;
struct mgr_priv_data {scalar_t__ updating; int timings; int lcd_config; } ;


 int DSSDBG (char*,int ) ;
 int DSSERR (char*,int ) ;
 int dispc_ovl_enable (int ,int) ;
 int dispc_ovl_setup (int ,struct omap_overlay_info*,int,int *,int) ;
 int dss_ovl_use_replication (int ,int ) ;
 struct mgr_priv_data* get_mgr_priv (int ) ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;

__attribute__((used)) static void dss_ovl_write_regs(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 struct omap_overlay_info *oi;
 bool replication;
 struct mgr_priv_data *mp;
 int r;

 DSSDBG("writing ovl %d regs\n", ovl->id);

 if (!op->enabled || !op->info_dirty)
  return;

 oi = &op->info;

 mp = get_mgr_priv(ovl->manager);

 replication = dss_ovl_use_replication(mp->lcd_config, oi->color_mode);

 r = dispc_ovl_setup(ovl->id, oi, replication, &mp->timings, 0);
 if (r) {




  DSSERR("dispc_ovl_setup failed for ovl %d\n", ovl->id);


  op->enabled = 0;
  dispc_ovl_enable(ovl->id, 0);
  return;
 }

 op->info_dirty = 0;
 if (mp->updating)
  op->shadow_info_dirty = 1;
}
