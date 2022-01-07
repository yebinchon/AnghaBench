
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_priv_data {int extra_info_dirty; int shadow_extra_info_dirty; int fifo_high; int fifo_low; int enabled; } ;
struct omap_overlay {int manager; int id; } ;
struct mgr_priv_data {scalar_t__ updating; } ;


 int DSSDBG (char*,int ) ;
 int dispc_ovl_enable (int ,int ) ;
 int dispc_ovl_set_fifo_threshold (int ,int ,int ) ;
 struct mgr_priv_data* get_mgr_priv (int ) ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;

__attribute__((used)) static void dss_ovl_write_regs_extra(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 struct mgr_priv_data *mp;

 DSSDBG("writing ovl %d regs extra\n", ovl->id);

 if (!op->extra_info_dirty)
  return;




 dispc_ovl_enable(ovl->id, op->enabled);
 dispc_ovl_set_fifo_threshold(ovl->id, op->fifo_low, op->fifo_high);

 mp = get_mgr_priv(ovl->manager);

 op->extra_info_dirty = 0;
 if (mp->updating)
  op->shadow_extra_info_dirty = 1;
}
