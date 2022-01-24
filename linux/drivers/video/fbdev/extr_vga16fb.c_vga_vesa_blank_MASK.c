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
struct TYPE_2__ {int CrtMiscIO; int Overflow; int ClockingMode; void* ModeControl; void* EndVertRetrace; void* StartVertRetrace; void* EndHorizRetrace; void* StartHorizRetrace; void* HorizDisplayEnd; void* HorizontalTotal; } ;
struct vga16fb_par {TYPE_1__ vga_state; int /*<<< orphan*/  vesa_blanked; } ;

/* Variables and functions */
 int FB_BLANK_HSYNC_SUSPEND ; 
 int FB_BLANK_VSYNC_SUSPEND ; 
 int /*<<< orphan*/  VGA_CRTC_H_SYNC_END ; 
 int /*<<< orphan*/  VGA_CRTC_H_SYNC_START ; 
 int /*<<< orphan*/  VGA_CRTC_OVERFLOW ; 
 int /*<<< orphan*/  VGA_CRTC_V_SYNC_END ; 
 int /*<<< orphan*/  VGA_CRTC_V_SYNC_START ; 
 int /*<<< orphan*/  VGA_CRT_IC ; 
 int /*<<< orphan*/  VGA_MIS_R ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_SEQ_I ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct vga16fb_par *par, int mode)
{
	unsigned char SeqCtrlIndex = FUNC1(VGA_SEQ_I);
	unsigned char CrtCtrlIndex = FUNC1(VGA_CRT_IC);
	
	/* save original values of VGA controller registers */
	if(!par->vesa_blanked) {
		par->vga_state.CrtMiscIO = FUNC1(VGA_MIS_R);
		//sti();

		par->vga_state.HorizontalTotal = FUNC2(0x00);	/* HorizontalTotal */
		par->vga_state.HorizDisplayEnd = FUNC2(0x01);	/* HorizDisplayEnd */
		par->vga_state.StartHorizRetrace = FUNC2(0x04);	/* StartHorizRetrace */
		par->vga_state.EndHorizRetrace = FUNC2(0x05);	/* EndHorizRetrace */
		par->vga_state.Overflow = FUNC2(0x07);		/* Overflow */
		par->vga_state.StartVertRetrace = FUNC2(0x10);	/* StartVertRetrace */
		par->vga_state.EndVertRetrace = FUNC2(0x11);	/* EndVertRetrace */
		par->vga_state.ModeControl = FUNC2(0x17);	/* ModeControl */
		par->vga_state.ClockingMode = FUNC3(0x01);	/* ClockingMode */
	}

	/* assure that video is enabled */
	/* "0x20" is VIDEO_ENABLE_bit in register 01 of sequencer */
	FUNC6(0x01, par->vga_state.ClockingMode | 0x20);

	/* test for vertical retrace in process.... */
	if ((par->vga_state.CrtMiscIO & 0x80) == 0x80)
		FUNC4(VGA_MIS_W, par->vga_state.CrtMiscIO & 0xef);

	/*
	 * Set <End of vertical retrace> to minimum (0) and
	 * <Start of vertical Retrace> to maximum (incl. overflow)
	 * Result: turn off vertical sync (VSync) pulse.
	 */
	if (mode & FB_BLANK_VSYNC_SUSPEND) {
		FUNC5(VGA_CRTC_V_SYNC_START, 0xff);
		FUNC5(VGA_CRTC_V_SYNC_END, 0x40);
		/* bits 9,10 of vert. retrace */
		FUNC5(VGA_CRTC_OVERFLOW, par->vga_state.Overflow | 0x84);
	}

	if (mode & FB_BLANK_HSYNC_SUSPEND) {
		/*
		 * Set <End of horizontal retrace> to minimum (0) and
		 *  <Start of horizontal Retrace> to maximum
		 * Result: turn off horizontal sync (HSync) pulse.
		 */
		FUNC5(VGA_CRTC_H_SYNC_START, 0xff);
		FUNC5(VGA_CRTC_H_SYNC_END, 0x00);
	}

	/* restore both index registers */
	FUNC0(SeqCtrlIndex, VGA_SEQ_I);
	FUNC0(CrtCtrlIndex, VGA_CRT_IC);
}