#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct radeonfb_info {int dummy; } ;
struct radeon_regs {int /*<<< orphan*/  vclk_ecp_cntl; int /*<<< orphan*/  tmds_transmitter_cntl; int /*<<< orphan*/  tmds_crc; int /*<<< orphan*/  fp_gen_cntl; int /*<<< orphan*/  fp_vert_stretch; int /*<<< orphan*/  fp_horz_stretch; int /*<<< orphan*/  fp_v_sync_strt_wid; int /*<<< orphan*/  fp_h_sync_strt_wid; int /*<<< orphan*/  fp_crtc_v_total_disp; int /*<<< orphan*/  fp_crtc_h_total_disp; int /*<<< orphan*/  surface_cntl; int /*<<< orphan*/  crtc_pitch; int /*<<< orphan*/  crtc_v_sync_strt_wid; int /*<<< orphan*/  crtc_v_total_disp; int /*<<< orphan*/  crtc_h_sync_strt_wid; int /*<<< orphan*/  crtc_h_total_disp; int /*<<< orphan*/  dac_cntl; int /*<<< orphan*/  crtc_more_cntl; int /*<<< orphan*/  crtc_ext_cntl; int /*<<< orphan*/  crtc_gen_cntl; int /*<<< orphan*/ * surf_info; int /*<<< orphan*/ * surf_upper_bound; int /*<<< orphan*/ * surf_lower_bound; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; scalar_t__ reg; } ;

/* Variables and functions */
 int CRTC_DISPLAY_DIS ; 
 int /*<<< orphan*/  CRTC_EXT_CNTL ; 
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
 int /*<<< orphan*/  DAC_CNTL ; 
 int DAC_RANGE_CNTL ; 
 int /*<<< orphan*/  FB_BLANK_NORMAL ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FP_CRTC_H_TOTAL_DISP ; 
 scalar_t__ FP_CRTC_V_TOTAL_DISP ; 
 scalar_t__ FP_GEN_CNTL ; 
 scalar_t__ FP_HORZ_STRETCH ; 
 scalar_t__ FP_H_SYNC_STRT_WID ; 
 scalar_t__ FP_VERT_STRETCH ; 
 scalar_t__ FP_V_SYNC_STRT_WID ; 
 int MT_DFP ; 
 int MT_LCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct radeonfb_info*) ; 
 scalar_t__ SURFACE0_INFO ; 
 scalar_t__ SURFACE0_LOWER_BOUND ; 
 scalar_t__ SURFACE0_UPPER_BOUND ; 
 scalar_t__ SURFACE_CNTL ; 
 scalar_t__ TMDS_CRC ; 
 scalar_t__ TMDS_TRANSMITTER_CNTL ; 
 int /*<<< orphan*/  VCLK_ECP_CNTL ; 
 TYPE_1__* common_regs ; 
 scalar_t__ nomodeset ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeonfb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeonfb_info*,struct radeon_regs*) ; 

void FUNC7 (struct radeonfb_info *rinfo, struct radeon_regs *mode,
			int regs_only)
{
	int i;
	int primary_mon = FUNC3(rinfo);

	if (nomodeset)
		return;

	if (!regs_only)
		FUNC5(rinfo, FB_BLANK_NORMAL, 0);

	FUNC4(31);
	for (i=0; i<10; i++)
		FUNC1(common_regs[i].reg, common_regs[i].val);

	/* Apply surface registers */
	for (i=0; i<8; i++) {
		FUNC1(SURFACE0_LOWER_BOUND + 0x10*i, mode->surf_lower_bound[i]);
		FUNC1(SURFACE0_UPPER_BOUND + 0x10*i, mode->surf_upper_bound[i]);
		FUNC1(SURFACE0_INFO + 0x10*i, mode->surf_info[i]);
	}

	FUNC1(CRTC_GEN_CNTL, mode->crtc_gen_cntl);
	FUNC2(CRTC_EXT_CNTL, mode->crtc_ext_cntl,
		~(CRTC_HSYNC_DIS | CRTC_VSYNC_DIS | CRTC_DISPLAY_DIS));
	FUNC1(CRTC_MORE_CNTL, mode->crtc_more_cntl);
	FUNC2(DAC_CNTL, mode->dac_cntl, DAC_RANGE_CNTL | DAC_BLANKING);
	FUNC1(CRTC_H_TOTAL_DISP, mode->crtc_h_total_disp);
	FUNC1(CRTC_H_SYNC_STRT_WID, mode->crtc_h_sync_strt_wid);
	FUNC1(CRTC_V_TOTAL_DISP, mode->crtc_v_total_disp);
	FUNC1(CRTC_V_SYNC_STRT_WID, mode->crtc_v_sync_strt_wid);
	FUNC1(CRTC_OFFSET, 0);
	FUNC1(CRTC_OFFSET_CNTL, 0);
	FUNC1(CRTC_PITCH, mode->crtc_pitch);
	FUNC1(SURFACE_CNTL, mode->surface_cntl);

	FUNC6(rinfo, mode);

	if ((primary_mon == MT_DFP) || (primary_mon == MT_LCD)) {
		FUNC4(10);
		FUNC1(FP_CRTC_H_TOTAL_DISP, mode->fp_crtc_h_total_disp);
		FUNC1(FP_CRTC_V_TOTAL_DISP, mode->fp_crtc_v_total_disp);
		FUNC1(FP_H_SYNC_STRT_WID, mode->fp_h_sync_strt_wid);
		FUNC1(FP_V_SYNC_STRT_WID, mode->fp_v_sync_strt_wid);
		FUNC1(FP_HORZ_STRETCH, mode->fp_horz_stretch);
		FUNC1(FP_VERT_STRETCH, mode->fp_vert_stretch);
		FUNC1(FP_GEN_CNTL, mode->fp_gen_cntl);
		FUNC1(TMDS_CRC, mode->tmds_crc);
		FUNC1(TMDS_TRANSMITTER_CNTL, mode->tmds_transmitter_cntl);
	}

	if (!regs_only)
		FUNC5(rinfo, FB_BLANK_UNBLANK, 0);

	FUNC4(2);
	FUNC0(VCLK_ECP_CNTL, mode->vclk_ecp_cntl);
	
	return;
}