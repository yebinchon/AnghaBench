
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int* fifo_assignment; TYPE_1__* feat; int * fifo_size; } ;
struct TYPE_3__ {int num_fifos; scalar_t__ has_writeback; scalar_t__ gfx_fifo_workaround; } ;


 int DISPC_GLOBAL_BUFFER ;
 int DISPC_OVL_FIFO_SIZE_STATUS (int) ;
 int FEAT_REG_FIFOSIZE ;
 int FLD_MOD (int ,int,int,int) ;
 size_t OMAP_DSS_GFX ;
 size_t OMAP_DSS_WB ;
 int REG_GET (int ,int ,int ) ;
 TYPE_2__ dispc ;
 int dispc_ovl_compute_fifo_thresholds (size_t,int *,int *,int const,int const) ;
 int dispc_ovl_set_fifo_threshold (size_t,int ,int ) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int ) ;
 int dss_feat_get_buffer_size_unit () ;
 int dss_feat_get_num_ovls () ;
 int dss_feat_get_reg_field (int ,int *,int *) ;

__attribute__((used)) static void dispc_init_fifos(void)
{
 u32 size;
 int fifo;
 u8 start, end;
 u32 unit;
 int i;

 unit = dss_feat_get_buffer_size_unit();

 dss_feat_get_reg_field(FEAT_REG_FIFOSIZE, &start, &end);

 for (fifo = 0; fifo < dispc.feat->num_fifos; ++fifo) {
  size = REG_GET(DISPC_OVL_FIFO_SIZE_STATUS(fifo), start, end);
  size *= unit;
  dispc.fifo_size[fifo] = size;





  dispc.fifo_assignment[fifo] = fifo;
 }
 if (dispc.feat->gfx_fifo_workaround) {
  u32 v;

  v = dispc_read_reg(DISPC_GLOBAL_BUFFER);

  v = FLD_MOD(v, 4, 2, 0);
  v = FLD_MOD(v, 4, 5, 3);
  v = FLD_MOD(v, 0, 26, 24);
  v = FLD_MOD(v, 0, 29, 27);

  dispc_write_reg(DISPC_GLOBAL_BUFFER, v);

  dispc.fifo_assignment[OMAP_DSS_GFX] = OMAP_DSS_WB;
  dispc.fifo_assignment[OMAP_DSS_WB] = OMAP_DSS_GFX;
 }




 for (i = 0; i < dss_feat_get_num_ovls(); ++i) {
  u32 low, high;
  const bool use_fifomerge = 0;
  const bool manual_update = 0;

  dispc_ovl_compute_fifo_thresholds(i, &low, &high,
   use_fifomerge, manual_update);

  dispc_ovl_set_fifo_threshold(i, low, high);
 }

 if (dispc.feat->has_writeback) {
  u32 low, high;
  const bool use_fifomerge = 0;
  const bool manual_update = 0;

  dispc_ovl_compute_fifo_thresholds(OMAP_DSS_WB, &low, &high,
   use_fifomerge, manual_update);

  dispc_ovl_set_fifo_threshold(OMAP_DSS_WB, low, high);
 }
}
