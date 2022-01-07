
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeonfb_info {int dummy; } ;
struct radeon_regs {int vclk_ecp_cntl; int tmds_transmitter_cntl; int tmds_crc; int fp_gen_cntl; int fp_vert_stretch; int fp_horz_stretch; int fp_v_sync_strt_wid; int fp_h_sync_strt_wid; int fp_crtc_v_total_disp; int fp_crtc_h_total_disp; int surface_cntl; int crtc_pitch; int crtc_v_sync_strt_wid; int crtc_v_total_disp; int crtc_h_sync_strt_wid; int crtc_h_total_disp; int dac_cntl; int crtc_more_cntl; int crtc_ext_cntl; int crtc_gen_cntl; int * surf_info; int * surf_upper_bound; int * surf_lower_bound; } ;
struct TYPE_2__ {int val; scalar_t__ reg; } ;


 int CRTC_DISPLAY_DIS ;
 int CRTC_EXT_CNTL ;
 scalar_t__ CRTC_GEN_CNTL ;
 int CRTC_HSYNC_DIS ;
 scalar_t__ CRTC_H_SYNC_STRT_WID ;
 scalar_t__ CRTC_H_TOTAL_DISP ;
 scalar_t__ CRTC_MORE_CNTL ;
 scalar_t__ CRTC_OFFSET ;
 scalar_t__ CRTC_OFFSET_CNTL ;
 scalar_t__ CRTC_PITCH ;
 int CRTC_VSYNC_DIS ;
 scalar_t__ CRTC_V_SYNC_STRT_WID ;
 scalar_t__ CRTC_V_TOTAL_DISP ;
 int DAC_BLANKING ;
 int DAC_CNTL ;
 int DAC_RANGE_CNTL ;
 int FB_BLANK_NORMAL ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ FP_CRTC_H_TOTAL_DISP ;
 scalar_t__ FP_CRTC_V_TOTAL_DISP ;
 scalar_t__ FP_GEN_CNTL ;
 scalar_t__ FP_HORZ_STRETCH ;
 scalar_t__ FP_H_SYNC_STRT_WID ;
 scalar_t__ FP_VERT_STRETCH ;
 scalar_t__ FP_V_SYNC_STRT_WID ;
 int MT_DFP ;
 int MT_LCD ;
 int OUTPLL (int ,int ) ;
 int OUTREG (scalar_t__,int ) ;
 int OUTREGP (int ,int ,int) ;
 int PRIMARY_MONITOR (struct radeonfb_info*) ;
 scalar_t__ SURFACE0_INFO ;
 scalar_t__ SURFACE0_LOWER_BOUND ;
 scalar_t__ SURFACE0_UPPER_BOUND ;
 scalar_t__ SURFACE_CNTL ;
 scalar_t__ TMDS_CRC ;
 scalar_t__ TMDS_TRANSMITTER_CNTL ;
 int VCLK_ECP_CNTL ;
 TYPE_1__* common_regs ;
 scalar_t__ nomodeset ;
 int radeon_fifo_wait (int) ;
 int radeon_screen_blank (struct radeonfb_info*,int ,int ) ;
 int radeon_write_pll_regs (struct radeonfb_info*,struct radeon_regs*) ;

void radeon_write_mode (struct radeonfb_info *rinfo, struct radeon_regs *mode,
   int regs_only)
{
 int i;
 int primary_mon = PRIMARY_MONITOR(rinfo);

 if (nomodeset)
  return;

 if (!regs_only)
  radeon_screen_blank(rinfo, FB_BLANK_NORMAL, 0);

 radeon_fifo_wait(31);
 for (i=0; i<10; i++)
  OUTREG(common_regs[i].reg, common_regs[i].val);


 for (i=0; i<8; i++) {
  OUTREG(SURFACE0_LOWER_BOUND + 0x10*i, mode->surf_lower_bound[i]);
  OUTREG(SURFACE0_UPPER_BOUND + 0x10*i, mode->surf_upper_bound[i]);
  OUTREG(SURFACE0_INFO + 0x10*i, mode->surf_info[i]);
 }

 OUTREG(CRTC_GEN_CNTL, mode->crtc_gen_cntl);
 OUTREGP(CRTC_EXT_CNTL, mode->crtc_ext_cntl,
  ~(CRTC_HSYNC_DIS | CRTC_VSYNC_DIS | CRTC_DISPLAY_DIS));
 OUTREG(CRTC_MORE_CNTL, mode->crtc_more_cntl);
 OUTREGP(DAC_CNTL, mode->dac_cntl, DAC_RANGE_CNTL | DAC_BLANKING);
 OUTREG(CRTC_H_TOTAL_DISP, mode->crtc_h_total_disp);
 OUTREG(CRTC_H_SYNC_STRT_WID, mode->crtc_h_sync_strt_wid);
 OUTREG(CRTC_V_TOTAL_DISP, mode->crtc_v_total_disp);
 OUTREG(CRTC_V_SYNC_STRT_WID, mode->crtc_v_sync_strt_wid);
 OUTREG(CRTC_OFFSET, 0);
 OUTREG(CRTC_OFFSET_CNTL, 0);
 OUTREG(CRTC_PITCH, mode->crtc_pitch);
 OUTREG(SURFACE_CNTL, mode->surface_cntl);

 radeon_write_pll_regs(rinfo, mode);

 if ((primary_mon == MT_DFP) || (primary_mon == MT_LCD)) {
  radeon_fifo_wait(10);
  OUTREG(FP_CRTC_H_TOTAL_DISP, mode->fp_crtc_h_total_disp);
  OUTREG(FP_CRTC_V_TOTAL_DISP, mode->fp_crtc_v_total_disp);
  OUTREG(FP_H_SYNC_STRT_WID, mode->fp_h_sync_strt_wid);
  OUTREG(FP_V_SYNC_STRT_WID, mode->fp_v_sync_strt_wid);
  OUTREG(FP_HORZ_STRETCH, mode->fp_horz_stretch);
  OUTREG(FP_VERT_STRETCH, mode->fp_vert_stretch);
  OUTREG(FP_GEN_CNTL, mode->fp_gen_cntl);
  OUTREG(TMDS_CRC, mode->tmds_crc);
  OUTREG(TMDS_TRANSMITTER_CNTL, mode->tmds_transmitter_cntl);
 }

 if (!regs_only)
  radeon_screen_blank(rinfo, FB_BLANK_UNBLANK, 0);

 radeon_fifo_wait(2);
 OUTPLL(VCLK_ECP_CNTL, mode->vclk_ecp_cntl);

 return;
}
