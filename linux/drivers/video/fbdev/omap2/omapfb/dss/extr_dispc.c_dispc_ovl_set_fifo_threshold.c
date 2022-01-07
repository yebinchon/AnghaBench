
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {scalar_t__ set_max_preload; } ;


 int DISPC_OVL_FIFO_THRESHOLD (int) ;
 int DISPC_OVL_PRELOAD (int) ;
 int DSSDBG (char*,int,int,int,int,int) ;
 int FEAT_PRELOAD ;
 int FEAT_REG_FIFOHIGHTHRESHOLD ;
 int FEAT_REG_FIFOLOWTHRESHOLD ;
 int FLD_VAL (int,int ,int ) ;
 int OMAP_DSS_WB ;
 int REG_GET (int ,int ,int ) ;
 int WARN_ON (int) ;
 TYPE_2__ dispc ;
 int dispc_write_reg (int ,int) ;
 int dss_feat_get_buffer_size_unit () ;
 int dss_feat_get_reg_field (int ,int *,int *) ;
 scalar_t__ dss_has_feature (int ) ;
 int min (int,int) ;

void dispc_ovl_set_fifo_threshold(enum omap_plane plane, u32 low, u32 high)
{
 u8 hi_start, hi_end, lo_start, lo_end;
 u32 unit;

 unit = dss_feat_get_buffer_size_unit();

 WARN_ON(low % unit != 0);
 WARN_ON(high % unit != 0);

 low /= unit;
 high /= unit;

 dss_feat_get_reg_field(FEAT_REG_FIFOHIGHTHRESHOLD, &hi_start, &hi_end);
 dss_feat_get_reg_field(FEAT_REG_FIFOLOWTHRESHOLD, &lo_start, &lo_end);

 DSSDBG("fifo(%d) threshold (bytes), old %u/%u, new %u/%u\n",
   plane,
   REG_GET(DISPC_OVL_FIFO_THRESHOLD(plane),
    lo_start, lo_end) * unit,
   REG_GET(DISPC_OVL_FIFO_THRESHOLD(plane),
    hi_start, hi_end) * unit,
   low * unit, high * unit);

 dispc_write_reg(DISPC_OVL_FIFO_THRESHOLD(plane),
   FLD_VAL(high, hi_start, hi_end) |
   FLD_VAL(low, lo_start, lo_end));






 if (dss_has_feature(FEAT_PRELOAD) && dispc.feat->set_max_preload &&
   plane != OMAP_DSS_WB)
  dispc_write_reg(DISPC_OVL_PRELOAD(plane), min(high, 0xfffu));
}
