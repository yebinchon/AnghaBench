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
struct TYPE_2__ {unsigned char CrtMiscIO; int /*<<< orphan*/  ClockingMode; int /*<<< orphan*/  ModeControl; int /*<<< orphan*/  EndVertRetrace; int /*<<< orphan*/  StartVertRetrace; int /*<<< orphan*/  Overflow; int /*<<< orphan*/  EndHorizRetrace; int /*<<< orphan*/  StartHorizRetrace; int /*<<< orphan*/  HorizDisplayEnd; int /*<<< orphan*/  HorizontalTotal; } ;
struct vga16fb_par {TYPE_1__ vga_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_CRT_IC ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_SEQ_I ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vga16fb_par *par)
{
	unsigned char SeqCtrlIndex = FUNC0(VGA_SEQ_I);
	unsigned char CrtCtrlIndex = FUNC0(VGA_CRT_IC);
	
	/* restore original values of VGA controller registers */
	FUNC1(VGA_MIS_W, par->vga_state.CrtMiscIO);

	/* HorizontalTotal */
	FUNC2(0x00, par->vga_state.HorizontalTotal);
	/* HorizDisplayEnd */
	FUNC2(0x01, par->vga_state.HorizDisplayEnd);
	/* StartHorizRetrace */
	FUNC2(0x04, par->vga_state.StartHorizRetrace);
	/* EndHorizRetrace */
	FUNC2(0x05, par->vga_state.EndHorizRetrace);
	/* Overflow */
	FUNC2(0x07, par->vga_state.Overflow);
	/* StartVertRetrace */
	FUNC2(0x10, par->vga_state.StartVertRetrace);
	/* EndVertRetrace */
	FUNC2(0x11, par->vga_state.EndVertRetrace);
	/* ModeControl */
	FUNC2(0x17, par->vga_state.ModeControl);
	/* ClockingMode */
	FUNC3(0x01, par->vga_state.ClockingMode);

	/* restore index/control registers */
	FUNC1(VGA_SEQ_I, SeqCtrlIndex);
	FUNC1(VGA_CRT_IC, CrtCtrlIndex);
}