#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ graphic_v_end; scalar_t__ graphic_v_start; } ;
union graphic_v_disp_u {int val; TYPE_5__ f; } ;
struct TYPE_10__ {scalar_t__ graphic_h_end; scalar_t__ graphic_h_start; } ;
union graphic_h_disp_u {int val; TYPE_4__ f; } ;
struct TYPE_12__ {scalar_t__ crtc_v_total; scalar_t__ crtc_h_total; } ;
union crtc_total_u {int val; TYPE_6__ f; } ;
struct TYPE_9__ {scalar_t__ active_v_end; scalar_t__ active_v_start; } ;
union active_v_disp_u {int val; TYPE_3__ f; } ;
struct TYPE_8__ {scalar_t__ active_h_end; scalar_t__ active_h_start; } ;
union active_h_disp_u {int val; TYPE_2__ f; } ;
typedef  int u32 ;
struct w100fb_par {TYPE_1__* mach; struct w100_mode* mode; } ;
struct w100_mode {int crtc_ss; int crtc_ls; int crtc_gs; int crtc_vpos_gs; int crtc_rev; int crtc_dclk; int crtc_gclk; int crtc_goe; int crtc_ps1_active; scalar_t__ lower_margin; scalar_t__ yres; scalar_t__ upper_margin; scalar_t__ right_margin; scalar_t__ xres; scalar_t__ left_margin; } ;
struct w100_gen_regs {int lcd_format; int lcdd_cntl1; int lcdd_cntl2; int genlcd_cntl1; int genlcd_cntl2; int genlcd_cntl3; } ;
struct TYPE_7__ {struct w100_gen_regs* regs; } ;

/* Variables and functions */
 scalar_t__ mmACTIVE_H_DISP ; 
 scalar_t__ mmACTIVE_V_DISP ; 
 scalar_t__ mmCRTC_DCLK ; 
 scalar_t__ mmCRTC_DEFAULT_COUNT ; 
 scalar_t__ mmCRTC_FRAME ; 
 scalar_t__ mmCRTC_FRAME_VPOS ; 
 scalar_t__ mmCRTC_GCLK ; 
 scalar_t__ mmCRTC_GOE ; 
 scalar_t__ mmCRTC_GS ; 
 scalar_t__ mmCRTC_LS ; 
 scalar_t__ mmCRTC_PS1_ACTIVE ; 
 scalar_t__ mmCRTC_REV ; 
 scalar_t__ mmCRTC_SS ; 
 scalar_t__ mmCRTC_TOTAL ; 
 scalar_t__ mmCRTC_VPOS_GS ; 
 scalar_t__ mmDISP_DEBUG2 ; 
 scalar_t__ mmGENLCD_CNTL1 ; 
 scalar_t__ mmGENLCD_CNTL2 ; 
 scalar_t__ mmGENLCD_CNTL3 ; 
 scalar_t__ mmGRAPHIC_H_DISP ; 
 scalar_t__ mmGRAPHIC_V_DISP ; 
 scalar_t__ mmLCDD_CNTL1 ; 
 scalar_t__ mmLCDD_CNTL2 ; 
 scalar_t__ mmLCD_BACKGROUND_COLOR ; 
 scalar_t__ mmLCD_FORMAT ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct w100fb_par *par)
{
	u32 temp32;
	struct w100_mode *mode = par->mode;
	struct w100_gen_regs *regs = par->mach->regs;
	union active_h_disp_u active_h_disp;
	union active_v_disp_u active_v_disp;
	union graphic_h_disp_u graphic_h_disp;
	union graphic_v_disp_u graphic_v_disp;
	union crtc_total_u crtc_total;

	/* w3200 doesn't like undefined bits being set so zero register values first */

	active_h_disp.val = 0;
	active_h_disp.f.active_h_start=mode->left_margin;
	active_h_disp.f.active_h_end=mode->left_margin + mode->xres;
	FUNC1(active_h_disp.val, remapped_regs + mmACTIVE_H_DISP);

	active_v_disp.val = 0;
	active_v_disp.f.active_v_start=mode->upper_margin;
	active_v_disp.f.active_v_end=mode->upper_margin + mode->yres;
	FUNC1(active_v_disp.val, remapped_regs + mmACTIVE_V_DISP);

	graphic_h_disp.val = 0;
	graphic_h_disp.f.graphic_h_start=mode->left_margin;
	graphic_h_disp.f.graphic_h_end=mode->left_margin + mode->xres;
	FUNC1(graphic_h_disp.val, remapped_regs + mmGRAPHIC_H_DISP);

	graphic_v_disp.val = 0;
	graphic_v_disp.f.graphic_v_start=mode->upper_margin;
	graphic_v_disp.f.graphic_v_end=mode->upper_margin + mode->yres;
	FUNC1(graphic_v_disp.val, remapped_regs + mmGRAPHIC_V_DISP);

	crtc_total.val = 0;
	crtc_total.f.crtc_h_total=mode->left_margin  + mode->xres + mode->right_margin;
	crtc_total.f.crtc_v_total=mode->upper_margin + mode->yres + mode->lower_margin;
	FUNC1(crtc_total.val, remapped_regs + mmCRTC_TOTAL);

	FUNC1(mode->crtc_ss, remapped_regs + mmCRTC_SS);
	FUNC1(mode->crtc_ls, remapped_regs + mmCRTC_LS);
	FUNC1(mode->crtc_gs, remapped_regs + mmCRTC_GS);
	FUNC1(mode->crtc_vpos_gs, remapped_regs + mmCRTC_VPOS_GS);
	FUNC1(mode->crtc_rev, remapped_regs + mmCRTC_REV);
	FUNC1(mode->crtc_dclk, remapped_regs + mmCRTC_DCLK);
	FUNC1(mode->crtc_gclk, remapped_regs + mmCRTC_GCLK);
	FUNC1(mode->crtc_goe, remapped_regs + mmCRTC_GOE);
	FUNC1(mode->crtc_ps1_active, remapped_regs + mmCRTC_PS1_ACTIVE);

	FUNC1(regs->lcd_format, remapped_regs + mmLCD_FORMAT);
	FUNC1(regs->lcdd_cntl1, remapped_regs + mmLCDD_CNTL1);
	FUNC1(regs->lcdd_cntl2, remapped_regs + mmLCDD_CNTL2);
	FUNC1(regs->genlcd_cntl1, remapped_regs + mmGENLCD_CNTL1);
	FUNC1(regs->genlcd_cntl2, remapped_regs + mmGENLCD_CNTL2);
	FUNC1(regs->genlcd_cntl3, remapped_regs + mmGENLCD_CNTL3);

	FUNC1(0x00000000, remapped_regs + mmCRTC_FRAME);
	FUNC1(0x00000000, remapped_regs + mmCRTC_FRAME_VPOS);
	FUNC1(0x00000000, remapped_regs + mmCRTC_DEFAULT_COUNT);
	FUNC1(0x0000FF00, remapped_regs + mmLCD_BACKGROUND_COLOR);

	/* Hack for overlay in ext memory */
	temp32 = FUNC0(remapped_regs + mmDISP_DEBUG2);
	temp32 |= 0xc0000000;
	FUNC1(temp32, remapped_regs + mmDISP_DEBUG2);
}