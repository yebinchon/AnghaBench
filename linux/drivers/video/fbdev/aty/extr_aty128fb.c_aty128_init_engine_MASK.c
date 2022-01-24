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
typedef  int u32 ;
struct TYPE_2__ {int pitch; int bpp; int /*<<< orphan*/  depth; } ;
struct aty128fb_par {TYPE_1__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_OFFSET ; 
 int /*<<< orphan*/  DEFAULT_PITCH ; 
 int /*<<< orphan*/  DEFAULT_SC_BOTTOM_RIGHT ; 
 int /*<<< orphan*/  DP_BRUSH_BKGD_CLR ; 
 int /*<<< orphan*/  DP_BRUSH_FRGD_CLR ; 
 int /*<<< orphan*/  DP_GUI_MASTER_CNTL ; 
 int /*<<< orphan*/  DP_SRC_BKGD_CLR ; 
 int /*<<< orphan*/  DP_SRC_FRGD_CLR ; 
 int /*<<< orphan*/  DP_WRITE_MASK ; 
 int /*<<< orphan*/  DST_BRES_DEC ; 
 int /*<<< orphan*/  DST_BRES_ERR ; 
 int /*<<< orphan*/  DST_BRES_INC ; 
 int GMC_3D_FCN_EN_CLR ; 
 int GMC_AUX_CLIP_CLEAR ; 
 int GMC_BRUSH_SOLIDCOLOR ; 
 int GMC_BYTE_ORDER_MSB_TO_LSB ; 
 int GMC_DP_CONVERSION_TEMP_6500 ; 
 int GMC_DP_SRC_RECT ; 
 int GMC_DST_CLIP_DEFAULT ; 
 int GMC_DST_CLR_CMP_FCN_CLEAR ; 
 int GMC_DST_PITCH_OFFSET_DEFAULT ; 
 int GMC_SRC_CLIP_DEFAULT ; 
 int GMC_SRC_DSTCOLOR ; 
 int GMC_SRC_PITCH_OFFSET_DEFAULT ; 
 int GMC_WRITE_MASK_SET ; 
 int ROP3_PATCOPY ; 
 int /*<<< orphan*/  SCALE_3D_CNTL ; 
 int /*<<< orphan*/  FUNC0 (struct aty128fb_par*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct aty128fb_par*) ; 
 int /*<<< orphan*/  FUNC4 (struct aty128fb_par*) ; 

__attribute__((used)) static void FUNC5(struct aty128fb_par *par)
{
	u32 pitch_value;

	FUNC4(par);

	/* 3D scaler not spoken here */
	FUNC3(1, par);
	FUNC1(SCALE_3D_CNTL, 0x00000000);

	FUNC0(par);

	pitch_value = par->crtc.pitch;
	if (par->crtc.bpp == 24) {
		pitch_value = pitch_value * 3;
	}

	FUNC3(4, par);
	/* setup engine offset registers */
	FUNC1(DEFAULT_OFFSET, 0x00000000);

	/* setup engine pitch registers */
	FUNC1(DEFAULT_PITCH, pitch_value);

	/* set the default scissor register to max dimensions */
	FUNC1(DEFAULT_SC_BOTTOM_RIGHT, (0x1FFF << 16) | 0x1FFF);

	/* set the drawing controls registers */
	FUNC1(DP_GUI_MASTER_CNTL,
		    GMC_SRC_PITCH_OFFSET_DEFAULT		|
		    GMC_DST_PITCH_OFFSET_DEFAULT		|
		    GMC_SRC_CLIP_DEFAULT			|
		    GMC_DST_CLIP_DEFAULT			|
		    GMC_BRUSH_SOLIDCOLOR			|
		    (FUNC2(par->crtc.depth) << 8)	|
		    GMC_SRC_DSTCOLOR			|
		    GMC_BYTE_ORDER_MSB_TO_LSB		|
		    GMC_DP_CONVERSION_TEMP_6500		|
		    ROP3_PATCOPY				|
		    GMC_DP_SRC_RECT				|
		    GMC_3D_FCN_EN_CLR			|
		    GMC_DST_CLR_CMP_FCN_CLEAR		|
		    GMC_AUX_CLIP_CLEAR			|
		    GMC_WRITE_MASK_SET);

	FUNC3(8, par);
	/* clear the line drawing registers */
	FUNC1(DST_BRES_ERR, 0);
	FUNC1(DST_BRES_INC, 0);
	FUNC1(DST_BRES_DEC, 0);

	/* set brush color registers */
	FUNC1(DP_BRUSH_FRGD_CLR, 0xFFFFFFFF); /* white */
	FUNC1(DP_BRUSH_BKGD_CLR, 0x00000000); /* black */

	/* set source color registers */
	FUNC1(DP_SRC_FRGD_CLR, 0xFFFFFFFF);   /* white */
	FUNC1(DP_SRC_BKGD_CLR, 0x00000000);   /* black */

	/* default write mask */
	FUNC1(DP_WRITE_MASK, 0xFFFFFFFF);

	/* Wait for all the writes to be completed before returning */
	FUNC4(par);
}