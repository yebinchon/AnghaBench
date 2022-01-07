
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int fb_local_base; int pitch; unsigned long dp_gui_master_cntl; int depth; } ;


 int DEFAULT_PITCH_OFFSET ;
 int DEFAULT_SC_BOTTOM_MAX ;
 int DEFAULT_SC_BOTTOM_RIGHT ;
 int DEFAULT_SC_RIGHT_MAX ;
 int DEFAULT_SC_TOP_LEFT ;
 int DP_BRUSH_BKGD_CLR ;
 int DP_BRUSH_FRGD_CLR ;
 int DP_DATATYPE ;
 int DP_GUI_MASTER_CNTL ;
 int DP_SRC_BKGD_CLR ;
 int DP_SRC_FRGD_CLR ;
 int DP_WRITE_MSK ;
 int DST_LINE_END ;
 int DST_LINE_START ;
 int DST_PITCH_OFFSET ;
 int GMC_BRUSH_SOLID_COLOR ;
 unsigned long GMC_CLR_CMP_CNTL_DIS ;
 int GMC_SRC_DATATYPE_COLOR ;
 int HOST_BIG_ENDIAN_EN ;
 int INREG (int ) ;
 scalar_t__ IS_R300_VARIANT (struct radeonfb_info*) ;
 int MC_FB_LOCATION ;
 int OUTREG (int ,int) ;
 int OUTREGP (int ,int ,int ) ;
 int RB2D_DC_AUTOFLUSH_ENABLE ;
 int RB2D_DC_DC_DISABLE_IGNORE_PE ;
 int RB2D_DSTCACHE_MODE ;
 int RB3D_CNTL ;
 int SRC_PITCH_OFFSET ;
 int radeon_engine_idle () ;
 int radeon_fifo_wait (int) ;
 unsigned long radeon_get_dstbpp (int ) ;
 int radeonfb_engine_reset (struct radeonfb_info*) ;

void radeonfb_engine_init (struct radeonfb_info *rinfo)
{
 unsigned long temp;


 OUTREG(RB3D_CNTL, 0);

 radeonfb_engine_reset(rinfo);

 radeon_fifo_wait (1);
 if (IS_R300_VARIANT(rinfo)) {
  OUTREG(RB2D_DSTCACHE_MODE, INREG(RB2D_DSTCACHE_MODE) |
         RB2D_DC_AUTOFLUSH_ENABLE |
         RB2D_DC_DC_DISABLE_IGNORE_PE);
 } else {





  OUTREG(RB2D_DSTCACHE_MODE, 0);
 }

 radeon_fifo_wait (3);



 rinfo->fb_local_base = INREG(MC_FB_LOCATION) << 16;

 OUTREG(DEFAULT_PITCH_OFFSET, (rinfo->pitch << 0x16) |
         (rinfo->fb_local_base >> 10));
 OUTREG(DST_PITCH_OFFSET, (rinfo->pitch << 0x16) | (rinfo->fb_local_base >> 10));
 OUTREG(SRC_PITCH_OFFSET, (rinfo->pitch << 0x16) | (rinfo->fb_local_base >> 10));

 radeon_fifo_wait (1);



 OUTREGP(DP_DATATYPE, 0, ~HOST_BIG_ENDIAN_EN);

 radeon_fifo_wait (2);
 OUTREG(DEFAULT_SC_TOP_LEFT, 0);
 OUTREG(DEFAULT_SC_BOTTOM_RIGHT, (DEFAULT_SC_RIGHT_MAX |
      DEFAULT_SC_BOTTOM_MAX));

 temp = radeon_get_dstbpp(rinfo->depth);
 rinfo->dp_gui_master_cntl = ((temp << 8) | GMC_CLR_CMP_CNTL_DIS);

 radeon_fifo_wait (1);
 OUTREG(DP_GUI_MASTER_CNTL, (rinfo->dp_gui_master_cntl |
        GMC_BRUSH_SOLID_COLOR |
        GMC_SRC_DATATYPE_COLOR));

 radeon_fifo_wait (7);


 OUTREG(DST_LINE_START, 0);
 OUTREG(DST_LINE_END, 0);


 OUTREG(DP_BRUSH_FRGD_CLR, 0xffffffff);
 OUTREG(DP_BRUSH_BKGD_CLR, 0x00000000);


 OUTREG(DP_SRC_FRGD_CLR, 0xffffffff);
 OUTREG(DP_SRC_BKGD_CLR, 0x00000000);


 OUTREG(DP_WRITE_MSK, 0xffffffff);

 radeon_engine_idle ();
}
