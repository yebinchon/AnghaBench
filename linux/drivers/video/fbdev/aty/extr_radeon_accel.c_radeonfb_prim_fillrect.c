
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {int dp_gui_master_cntl; int* pseudo_palette; int depth; } ;
struct fb_fillrect {size_t color; int dy; int dx; int width; int height; } ;


 int DP_BRUSH_FRGD_CLR ;
 int DP_CNTL ;
 int DP_GUI_MASTER_CNTL ;
 int DP_WRITE_MSK ;
 int DSTCACHE_CTLSTAT ;
 scalar_t__ DST_8BPP ;
 int DST_WIDTH_HEIGHT ;
 int DST_X_LEFT_TO_RIGHT ;
 int DST_Y_TOP_TO_BOTTOM ;
 int DST_Y_X ;
 int GMC_BRUSH_SOLID_COLOR ;
 int OUTREG (int ,int) ;
 int RB2D_DC_FLUSH_ALL ;
 int ROP3_P ;
 int WAIT_2D_IDLECLEAN ;
 int WAIT_DMA_GUI_IDLE ;
 int WAIT_UNTIL ;
 int radeon_fifo_wait (int) ;
 scalar_t__ radeon_get_dstbpp (int ) ;

__attribute__((used)) static void radeonfb_prim_fillrect(struct radeonfb_info *rinfo,
       const struct fb_fillrect *region)
{
 radeon_fifo_wait(4);

 OUTREG(DP_GUI_MASTER_CNTL,
  rinfo->dp_gui_master_cntl
                | GMC_BRUSH_SOLID_COLOR
                | ROP3_P);
 if (radeon_get_dstbpp(rinfo->depth) != DST_8BPP)
  OUTREG(DP_BRUSH_FRGD_CLR, rinfo->pseudo_palette[region->color]);
 else
  OUTREG(DP_BRUSH_FRGD_CLR, region->color);
 OUTREG(DP_WRITE_MSK, 0xffffffff);
 OUTREG(DP_CNTL, (DST_X_LEFT_TO_RIGHT | DST_Y_TOP_TO_BOTTOM));

 radeon_fifo_wait(2);
 OUTREG(DSTCACHE_CTLSTAT, RB2D_DC_FLUSH_ALL);
 OUTREG(WAIT_UNTIL, (WAIT_2D_IDLECLEAN | WAIT_DMA_GUI_IDLE));

 radeon_fifo_wait(2);
 OUTREG(DST_Y_X, (region->dy << 16) | region->dx);
 OUTREG(DST_WIDTH_HEIGHT, (region->width << 16) | region->height);
}
