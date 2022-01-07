
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ovl_priv_data {scalar_t__ fifo_low; scalar_t__ fifo_high; int extra_info_dirty; } ;
struct omap_overlay {int dummy; } ;


 struct ovl_priv_data* get_ovl_priv (struct omap_overlay*) ;

__attribute__((used)) static void dss_apply_ovl_fifo_thresholds(struct omap_overlay *ovl,
  u32 fifo_low, u32 fifo_high)
{
 struct ovl_priv_data *op = get_ovl_priv(ovl);

 if (op->fifo_low == fifo_low && op->fifo_high == fifo_high)
  return;

 op->fifo_low = fifo_low;
 op->fifo_high = fifo_high;
 op->extra_info_dirty = 1;
}
