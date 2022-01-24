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
struct vgastate {int /*<<< orphan*/  vgabase; } ;
struct TYPE_2__ {int SeqCtrlIndex; int CrtCtrlIndex; int CrtMiscIO; int Overflow; int ClockingMode; void* ModeControl; void* EndVertRetrace; void* StartVertRetrace; void* EndHorizRetrace; void* StartHorizRetrace; void* HorizDisplayEnd; void* HorizontalTotal; } ;

/* Variables and functions */
 int VESA_HSYNC_SUSPEND ; 
 int VESA_VSYNC_SUSPEND ; 
 int /*<<< orphan*/  VGA_MIS_R ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_SEQ_CLOCK_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_I ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vga_lock ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ vga_state ; 
 int /*<<< orphan*/  vga_vesa_blanked ; 
 int /*<<< orphan*/  vga_video_port_reg ; 
 int /*<<< orphan*/  vga_video_port_val ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct vgastate *state, int mode)
{
	/* save original values of VGA controller registers */
	if (!vga_vesa_blanked) {
		FUNC2(&vga_lock);
		vga_state.SeqCtrlIndex = FUNC4(state->vgabase, VGA_SEQ_I);
		vga_state.CrtCtrlIndex = FUNC0(vga_video_port_reg);
		vga_state.CrtMiscIO = FUNC4(state->vgabase, VGA_MIS_R);
		FUNC3(&vga_lock);

		FUNC1(0x00, vga_video_port_reg);	/* HorizontalTotal */
		vga_state.HorizontalTotal = FUNC0(vga_video_port_val);
		FUNC1(0x01, vga_video_port_reg);	/* HorizDisplayEnd */
		vga_state.HorizDisplayEnd = FUNC0(vga_video_port_val);
		FUNC1(0x04, vga_video_port_reg);	/* StartHorizRetrace */
		vga_state.StartHorizRetrace = FUNC0(vga_video_port_val);
		FUNC1(0x05, vga_video_port_reg);	/* EndHorizRetrace */
		vga_state.EndHorizRetrace = FUNC0(vga_video_port_val);
		FUNC1(0x07, vga_video_port_reg);	/* Overflow */
		vga_state.Overflow = FUNC0(vga_video_port_val);
		FUNC1(0x10, vga_video_port_reg);	/* StartVertRetrace */
		vga_state.StartVertRetrace = FUNC0(vga_video_port_val);
		FUNC1(0x11, vga_video_port_reg);	/* EndVertRetrace */
		vga_state.EndVertRetrace = FUNC0(vga_video_port_val);
		FUNC1(0x17, vga_video_port_reg);	/* ModeControl */
		vga_state.ModeControl = FUNC0(vga_video_port_val);
		vga_state.ClockingMode = FUNC5(state->vgabase, VGA_SEQ_CLOCK_MODE);
	}

	/* assure that video is enabled */
	/* "0x20" is VIDEO_ENABLE_bit in register 01 of sequencer */
	FUNC2(&vga_lock);
	FUNC7(state->vgabase, VGA_SEQ_CLOCK_MODE, vga_state.ClockingMode | 0x20);

	/* test for vertical retrace in process.... */
	if ((vga_state.CrtMiscIO & 0x80) == 0x80)
		FUNC6(state->vgabase, VGA_MIS_W, vga_state.CrtMiscIO & 0xEF);

	/*
	 * Set <End of vertical retrace> to minimum (0) and
	 * <Start of vertical Retrace> to maximum (incl. overflow)
	 * Result: turn off vertical sync (VSync) pulse.
	 */
	if (mode & VESA_VSYNC_SUSPEND) {
		FUNC1(0x10, vga_video_port_reg);	/* StartVertRetrace */
		FUNC1(0xff, vga_video_port_val);	/* maximum value */
		FUNC1(0x11, vga_video_port_reg);	/* EndVertRetrace */
		FUNC1(0x40, vga_video_port_val);	/* minimum (bits 0..3)  */
		FUNC1(0x07, vga_video_port_reg);	/* Overflow */
		FUNC1(vga_state.Overflow | 0x84, vga_video_port_val);	/* bits 9,10 of vert. retrace */
	}

	if (mode & VESA_HSYNC_SUSPEND) {
		/*
		 * Set <End of horizontal retrace> to minimum (0) and
		 *  <Start of horizontal Retrace> to maximum
		 * Result: turn off horizontal sync (HSync) pulse.
		 */
		FUNC1(0x04, vga_video_port_reg);	/* StartHorizRetrace */
		FUNC1(0xff, vga_video_port_val);	/* maximum */
		FUNC1(0x05, vga_video_port_reg);	/* EndHorizRetrace */
		FUNC1(0x00, vga_video_port_val);	/* minimum (0) */
	}

	/* restore both index registers */
	FUNC6(state->vgabase, VGA_SEQ_I, vga_state.SeqCtrlIndex);
	FUNC1(vga_state.CrtCtrlIndex, vga_video_port_reg);
	FUNC3(&vga_lock);
}