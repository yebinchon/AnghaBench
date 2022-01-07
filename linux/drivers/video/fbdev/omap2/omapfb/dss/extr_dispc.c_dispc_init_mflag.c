
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {scalar_t__ has_writeback; } ;


 int DISPC_GLOBAL_MFLAG_ATTRIBUTE ;
 int OMAP_DSS_WB ;
 TYPE_2__ dispc ;
 int dispc_ovl_get_fifo_size (int) ;
 int dispc_ovl_set_mflag (int,int) ;
 int dispc_ovl_set_mflag_threshold (int,int,int) ;
 int dispc_write_reg (int ,int) ;
 int dss_feat_get_buffer_size_unit () ;
 int dss_feat_get_num_ovls () ;

__attribute__((used)) static void dispc_init_mflag(void)
{
 int i;
 dispc_write_reg(DISPC_GLOBAL_MFLAG_ATTRIBUTE,
  (1 << 0) |
  (0 << 2));

 for (i = 0; i < dss_feat_get_num_ovls(); ++i) {
  u32 size = dispc_ovl_get_fifo_size(i);
  u32 unit = dss_feat_get_buffer_size_unit();
  u32 low, high;

  dispc_ovl_set_mflag(i, 1);







  low = size * 4 / 8 / unit;
  high = size * 5 / 8 / unit;

  dispc_ovl_set_mflag_threshold(i, low, high);
 }

 if (dispc.feat->has_writeback) {
  u32 size = dispc_ovl_get_fifo_size(OMAP_DSS_WB);
  u32 unit = dss_feat_get_buffer_size_unit();
  u32 low, high;

  dispc_ovl_set_mflag(OMAP_DSS_WB, 1);







  low = size * 4 / 8 / unit;
  high = size * 5 / 8 / unit;

  dispc_ovl_set_mflag_threshold(OMAP_DSS_WB, low, high);
 }
}
