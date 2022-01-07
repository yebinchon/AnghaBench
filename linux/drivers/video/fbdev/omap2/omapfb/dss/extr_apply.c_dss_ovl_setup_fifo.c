
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ovl_priv_data {int enabling; int enabled; } ;
struct omap_overlay {int id; } ;


 int dispc_ovl_compute_fifo_thresholds (int ,int *,int *,int,int ) ;
 int dss_apply_ovl_fifo_thresholds (struct omap_overlay*,int ,int ) ;
 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;
 int ovl_manual_update (struct omap_overlay*) ;

__attribute__((used)) static void dss_ovl_setup_fifo(struct omap_overlay *ovl)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);
 u32 fifo_low, fifo_high;
 bool use_fifo_merge = 0;

 if (!op->enabled && !op->enabling)
  return;

 dispc_ovl_compute_fifo_thresholds(ovl->id, &fifo_low, &fifo_high,
   use_fifo_merge, ovl_manual_update(ovl));

 dss_apply_ovl_fifo_thresholds(ovl, fifo_low, fifo_high);
}
