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
struct venc_config {int llen; int flens; int cc_carr_wss_carr; int c_phase; int gain_u; int gain_v; int gain_y; int black_level; int blank_level; int m_control; int bstamp_wss_data; int s_carr; int l21__wc_ctl; int savid__eavid; int flen__fal; int lal__phase_reset; int hs_int_start_stop_x; int hs_ext_start_stop_x; int vs_int_start_x; int vs_int_stop_x__vs_int_start_y; int vs_int_stop_y__vs_ext_start_x; int vs_ext_stop_x__vs_ext_start_y; int vs_ext_stop_y; int avid_start_stop_x; int avid_start_stop_y; int fid_int_start_x__fid_int_start_y; int fid_int_offset_y__fid_ext_start_x; int fid_ext_start_y__fid_ext_offset_y; int vidout_ctrl; int hfltr_ctrl; int x_color; int line21; int ln_sel; int htrigger_vtrigger; int tvdetgp_int_start_stop_x; int tvdetgp_int_start_stop_y; int gen_ctrl; int f_control; int sync_ctrl; } ;
struct TYPE_2__ {int wss_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VENC_AVID_START_STOP_X ; 
 int /*<<< orphan*/  VENC_AVID_START_STOP_Y ; 
 int /*<<< orphan*/  VENC_BLACK_LEVEL ; 
 int /*<<< orphan*/  VENC_BLANK_LEVEL ; 
 int /*<<< orphan*/  VENC_BSTAMP_WSS_DATA ; 
 int /*<<< orphan*/  VENC_CC_CARR_WSS_CARR ; 
 int /*<<< orphan*/  VENC_C_PHASE ; 
 int /*<<< orphan*/  VENC_DAC_B__DAC_C ; 
 int /*<<< orphan*/  VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y ; 
 int /*<<< orphan*/  VENC_FID_INT_OFFSET_Y__FID_EXT_START_X ; 
 int /*<<< orphan*/  VENC_FID_INT_START_X__FID_INT_START_Y ; 
 int /*<<< orphan*/  VENC_FLENS ; 
 int /*<<< orphan*/  VENC_FLEN__FAL ; 
 int /*<<< orphan*/  VENC_F_CONTROL ; 
 int /*<<< orphan*/  VENC_GAIN_U ; 
 int /*<<< orphan*/  VENC_GAIN_V ; 
 int /*<<< orphan*/  VENC_GAIN_Y ; 
 int /*<<< orphan*/  VENC_GEN_CTRL ; 
 int /*<<< orphan*/  VENC_HFLTR_CTRL ; 
 int /*<<< orphan*/  VENC_HS_EXT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_HS_INT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_HTRIGGER_VTRIGGER ; 
 int /*<<< orphan*/  VENC_L21__WC_CTL ; 
 int /*<<< orphan*/  VENC_LAL__PHASE_RESET ; 
 int /*<<< orphan*/  VENC_LINE21 ; 
 int /*<<< orphan*/  VENC_LLEN ; 
 int /*<<< orphan*/  VENC_LN_SEL ; 
 int /*<<< orphan*/  VENC_M_CONTROL ; 
 int /*<<< orphan*/  VENC_SAVID__EAVID ; 
 int /*<<< orphan*/  VENC_SYNC_CTRL ; 
 int /*<<< orphan*/  VENC_S_CARR ; 
 int /*<<< orphan*/  VENC_TVDETGP_INT_START_STOP_X ; 
 int /*<<< orphan*/  VENC_TVDETGP_INT_START_STOP_Y ; 
 int /*<<< orphan*/  VENC_VIDOUT_CTRL ; 
 int /*<<< orphan*/  VENC_VS_EXT_STOP_X__VS_EXT_START_Y ; 
 int /*<<< orphan*/  VENC_VS_EXT_STOP_Y ; 
 int /*<<< orphan*/  VENC_VS_INT_START_X ; 
 int /*<<< orphan*/  VENC_VS_INT_STOP_X__VS_INT_START_Y ; 
 int /*<<< orphan*/  VENC_VS_INT_STOP_Y__VS_EXT_START_X ; 
 int /*<<< orphan*/  VENC_X_COLOR ; 
 TYPE_1__ venc ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const struct venc_config *config)
{
	FUNC0("write venc conf\n");

	FUNC2(VENC_LLEN, config->llen);
	FUNC2(VENC_FLENS, config->flens);
	FUNC2(VENC_CC_CARR_WSS_CARR, config->cc_carr_wss_carr);
	FUNC2(VENC_C_PHASE, config->c_phase);
	FUNC2(VENC_GAIN_U, config->gain_u);
	FUNC2(VENC_GAIN_V, config->gain_v);
	FUNC2(VENC_GAIN_Y, config->gain_y);
	FUNC2(VENC_BLACK_LEVEL, config->black_level);
	FUNC2(VENC_BLANK_LEVEL, config->blank_level);
	FUNC2(VENC_M_CONTROL, config->m_control);
	FUNC2(VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data |
			venc.wss_data);
	FUNC2(VENC_S_CARR, config->s_carr);
	FUNC2(VENC_L21__WC_CTL, config->l21__wc_ctl);
	FUNC2(VENC_SAVID__EAVID, config->savid__eavid);
	FUNC2(VENC_FLEN__FAL, config->flen__fal);
	FUNC2(VENC_LAL__PHASE_RESET, config->lal__phase_reset);
	FUNC2(VENC_HS_INT_START_STOP_X, config->hs_int_start_stop_x);
	FUNC2(VENC_HS_EXT_START_STOP_X, config->hs_ext_start_stop_x);
	FUNC2(VENC_VS_INT_START_X, config->vs_int_start_x);
	FUNC2(VENC_VS_INT_STOP_X__VS_INT_START_Y,
		       config->vs_int_stop_x__vs_int_start_y);
	FUNC2(VENC_VS_INT_STOP_Y__VS_EXT_START_X,
		       config->vs_int_stop_y__vs_ext_start_x);
	FUNC2(VENC_VS_EXT_STOP_X__VS_EXT_START_Y,
		       config->vs_ext_stop_x__vs_ext_start_y);
	FUNC2(VENC_VS_EXT_STOP_Y, config->vs_ext_stop_y);
	FUNC2(VENC_AVID_START_STOP_X, config->avid_start_stop_x);
	FUNC2(VENC_AVID_START_STOP_Y, config->avid_start_stop_y);
	FUNC2(VENC_FID_INT_START_X__FID_INT_START_Y,
		       config->fid_int_start_x__fid_int_start_y);
	FUNC2(VENC_FID_INT_OFFSET_Y__FID_EXT_START_X,
		       config->fid_int_offset_y__fid_ext_start_x);
	FUNC2(VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y,
		       config->fid_ext_start_y__fid_ext_offset_y);

	FUNC2(VENC_DAC_B__DAC_C,  FUNC1(VENC_DAC_B__DAC_C));
	FUNC2(VENC_VIDOUT_CTRL, config->vidout_ctrl);
	FUNC2(VENC_HFLTR_CTRL, config->hfltr_ctrl);
	FUNC2(VENC_X_COLOR, config->x_color);
	FUNC2(VENC_LINE21, config->line21);
	FUNC2(VENC_LN_SEL, config->ln_sel);
	FUNC2(VENC_HTRIGGER_VTRIGGER, config->htrigger_vtrigger);
	FUNC2(VENC_TVDETGP_INT_START_STOP_X,
		       config->tvdetgp_int_start_stop_x);
	FUNC2(VENC_TVDETGP_INT_START_STOP_Y,
		       config->tvdetgp_int_start_stop_y);
	FUNC2(VENC_GEN_CTRL, config->gen_ctrl);
	FUNC2(VENC_F_CONTROL, config->f_control);
	FUNC2(VENC_SYNC_CTRL, config->sync_ctrl);
}