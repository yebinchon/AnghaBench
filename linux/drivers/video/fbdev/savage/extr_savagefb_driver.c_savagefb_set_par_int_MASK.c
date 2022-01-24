#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct savagefb_par {scalar_t__ chip; int /*<<< orphan*/  (* SavageWaitIdle ) (struct savagefb_par*) ;} ;
struct savage_reg {unsigned char CR66; unsigned char CR3A; unsigned char CR31; unsigned char CR32; unsigned char CR58; int CR53; unsigned char SR0E; unsigned char SR0F; unsigned char SR29; unsigned char SR15; unsigned char* SR54; unsigned char CR5D; unsigned char CR5E; unsigned char CR3B; unsigned char CR3C; unsigned char CR43; unsigned char CR65; int CR67; unsigned char CR34; unsigned char CR40; unsigned char CR42; unsigned char CR45; unsigned char CR50; unsigned char CR51; unsigned char CR36; unsigned char CR60; unsigned char CR68; unsigned char CR69; unsigned char CR6F; unsigned char CR33; unsigned char CR86; unsigned char CR88; unsigned char CR90; unsigned char CR91; unsigned char CRB0; int SR10; unsigned char SR11; unsigned char SR12; unsigned char SR13; unsigned char SR18; unsigned char SR30; unsigned char SR08; int /*<<< orphan*/  MMPR3; int /*<<< orphan*/  MMPR2; int /*<<< orphan*/  MMPR1; int /*<<< orphan*/  MMPR0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FIFO_CONTROL_REG ; 
 int /*<<< orphan*/  MISC_TIMEOUT_REG ; 
 int /*<<< orphan*/  MIU_CONTROL_REG ; 
 scalar_t__ S3_SAVAGE4 ; 
 scalar_t__ S3_SAVAGE_MX ; 
 int /*<<< orphan*/  STREAMS_TIMEOUT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC5 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC6 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC7 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC8 (struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct savagefb_par*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct savagefb_par*,struct savage_reg*) ; 
 int FUNC12 (int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC13 (int,int,struct savagefb_par*) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned char,struct savagefb_par*) ; 

__attribute__((used)) static void FUNC15(struct savagefb_par  *par, struct savage_reg *reg)
{
	unsigned char tmp, cr3a, cr66, cr67;

	FUNC0("savagefb_set_par_int");

	par->SavageWaitIdle(par);

	FUNC14(0x3c2, 0x23, par);

	FUNC13(0x3d4, 0x4838, par);
	FUNC13(0x3d4, 0xa539, par);
	FUNC13(0x3c4, 0x0608, par);

	FUNC10(par, 1);

	/*
	 * Some Savage/MX and /IX systems go nuts when trying to exit the
	 * server after WindowMaker has displayed a gradient background.  I
	 * haven't been able to find what causes it, but a non-destructive
	 * switch to mode 3 here seems to eliminate the issue.
	 */

	FUNC2(par);
	FUNC14(0x3d4, 0x67, par);
	cr67 = FUNC12(0x3d5, par);
	FUNC14(0x3d5, cr67/*par->CR67*/ & ~0x0c, par); /* no STREAMS yet */

	FUNC14(0x3d4, 0x23, par);
	FUNC14(0x3d5, 0x00, par);
	FUNC14(0x3d4, 0x26, par);
	FUNC14(0x3d5, 0x00, par);

	/* restore extended regs */
	FUNC14(0x3d4, 0x66, par);
	FUNC14(0x3d5, reg->CR66, par);
	FUNC14(0x3d4, 0x3a, par);
	FUNC14(0x3d5, reg->CR3A, par);
	FUNC14(0x3d4, 0x31, par);
	FUNC14(0x3d5, reg->CR31, par);
	FUNC14(0x3d4, 0x32, par);
	FUNC14(0x3d5, reg->CR32, par);
	FUNC14(0x3d4, 0x58, par);
	FUNC14(0x3d5, reg->CR58, par);
	FUNC14(0x3d4, 0x53, par);
	FUNC14(0x3d5, reg->CR53 & 0x7f, par);

	FUNC13(0x3c4, 0x0608, par);

	/* Restore DCLK registers. */

	FUNC14(0x3c4, 0x0e, par);
	FUNC14(0x3c5, reg->SR0E, par);
	FUNC14(0x3c4, 0x0f, par);
	FUNC14(0x3c5, reg->SR0F, par);
	FUNC14(0x3c4, 0x29, par);
	FUNC14(0x3c5, reg->SR29, par);
	FUNC14(0x3c4, 0x15, par);
	FUNC14(0x3c5, reg->SR15, par);

	/* Restore flat panel expansion registers. */
	if (par->chip == S3_SAVAGE_MX) {
		int i;

		for (i = 0; i < 8; i++) {
			FUNC14(0x3c4, 0x54+i, par);
			FUNC14(0x3c5, reg->SR54[i], par);
		}
	}

	FUNC11 (par, reg);

	/* extended mode timing registers */
	FUNC14(0x3d4, 0x53, par);
	FUNC14(0x3d5, reg->CR53, par);
	FUNC14(0x3d4, 0x5d, par);
	FUNC14(0x3d5, reg->CR5D, par);
	FUNC14(0x3d4, 0x5e, par);
	FUNC14(0x3d5, reg->CR5E, par);
	FUNC14(0x3d4, 0x3b, par);
	FUNC14(0x3d5, reg->CR3B, par);
	FUNC14(0x3d4, 0x3c, par);
	FUNC14(0x3d5, reg->CR3C, par);
	FUNC14(0x3d4, 0x43, par);
	FUNC14(0x3d5, reg->CR43, par);
	FUNC14(0x3d4, 0x65, par);
	FUNC14(0x3d5, reg->CR65, par);

	/* restore the desired video mode with cr67 */
	FUNC14(0x3d4, 0x67, par);
	/* following part not present in X11 driver */
	cr67 = FUNC12(0x3d5, par) & 0xf;
	FUNC14(0x3d5, 0x50 | cr67, par);
	FUNC3(10);
	FUNC14(0x3d4, 0x67, par);
	/* end of part */
	FUNC14(0x3d5, reg->CR67 & ~0x0c, par);

	/* other mode timing and extended regs */
	FUNC14(0x3d4, 0x34, par);
	FUNC14(0x3d5, reg->CR34, par);
	FUNC14(0x3d4, 0x40, par);
	FUNC14(0x3d5, reg->CR40, par);
	FUNC14(0x3d4, 0x42, par);
	FUNC14(0x3d5, reg->CR42, par);
	FUNC14(0x3d4, 0x45, par);
	FUNC14(0x3d5, reg->CR45, par);
	FUNC14(0x3d4, 0x50, par);
	FUNC14(0x3d5, reg->CR50, par);
	FUNC14(0x3d4, 0x51, par);
	FUNC14(0x3d5, reg->CR51, par);

	/* memory timings */
	FUNC14(0x3d4, 0x36, par);
	FUNC14(0x3d5, reg->CR36, par);
	FUNC14(0x3d4, 0x60, par);
	FUNC14(0x3d5, reg->CR60, par);
	FUNC14(0x3d4, 0x68, par);
	FUNC14(0x3d5, reg->CR68, par);
	FUNC14(0x3d4, 0x69, par);
	FUNC14(0x3d5, reg->CR69, par);
	FUNC14(0x3d4, 0x6f, par);
	FUNC14(0x3d5, reg->CR6F, par);

	FUNC14(0x3d4, 0x33, par);
	FUNC14(0x3d5, reg->CR33, par);
	FUNC14(0x3d4, 0x86, par);
	FUNC14(0x3d5, reg->CR86, par);
	FUNC14(0x3d4, 0x88, par);
	FUNC14(0x3d5, reg->CR88, par);
	FUNC14(0x3d4, 0x90, par);
	FUNC14(0x3d5, reg->CR90, par);
	FUNC14(0x3d4, 0x91, par);
	FUNC14(0x3d5, reg->CR91, par);

	if (par->chip == S3_SAVAGE4) {
		FUNC14(0x3d4, 0xb0, par);
		FUNC14(0x3d5, reg->CRB0, par);
	}

	FUNC14(0x3d4, 0x32, par);
	FUNC14(0x3d5, reg->CR32, par);

	/* unlock extended seq regs */
	FUNC14(0x3c4, 0x08, par);
	FUNC14(0x3c5, 0x06, par);

	/* Restore extended sequencer regs for MCLK. SR10 == 255 indicates
	 * that we should leave the default SR10 and SR11 values there.
	 */
	if (reg->SR10 != 255) {
		FUNC14(0x3c4, 0x10, par);
		FUNC14(0x3c5, reg->SR10, par);
		FUNC14(0x3c4, 0x11, par);
		FUNC14(0x3c5, reg->SR11, par);
	}

	/* restore extended seq regs for dclk */
	FUNC14(0x3c4, 0x0e, par);
	FUNC14(0x3c5, reg->SR0E, par);
	FUNC14(0x3c4, 0x0f, par);
	FUNC14(0x3c5, reg->SR0F, par);
	FUNC14(0x3c4, 0x12, par);
	FUNC14(0x3c5, reg->SR12, par);
	FUNC14(0x3c4, 0x13, par);
	FUNC14(0x3c5, reg->SR13, par);
	FUNC14(0x3c4, 0x29, par);
	FUNC14(0x3c5, reg->SR29, par);
	FUNC14(0x3c4, 0x18, par);
	FUNC14(0x3c5, reg->SR18, par);

	/* load new m, n pll values for dclk & mclk */
	FUNC14(0x3c4, 0x15, par);
	tmp = FUNC12(0x3c5, par) & ~0x21;

	FUNC14(0x3c5, tmp | 0x03, par);
	FUNC14(0x3c5, tmp | 0x23, par);
	FUNC14(0x3c5, tmp | 0x03, par);
	FUNC14(0x3c5, reg->SR15, par);
	FUNC9(100);

	FUNC14(0x3c4, 0x30, par);
	FUNC14(0x3c5, reg->SR30, par);
	FUNC14(0x3c4, 0x08, par);
	FUNC14(0x3c5, reg->SR08, par);

	/* now write out cr67 in full, possibly starting STREAMS */
	FUNC2(par);
	FUNC14(0x3d4, 0x67, par);
	FUNC14(0x3d5, reg->CR67, par);

	FUNC14(0x3d4, 0x66, par);
	cr66 = FUNC12(0x3d5, par);
	FUNC14(0x3d5, cr66 | 0x80, par);
	FUNC14(0x3d4, 0x3a, par);
	cr3a = FUNC12(0x3d5, par);
	FUNC14(0x3d5, cr3a | 0x80, par);

	if (par->chip != S3_SAVAGE_MX) {
		FUNC2(par);
		FUNC4(FIFO_CONTROL_REG, reg->MMPR0, par);
		par->SavageWaitIdle(par);
		FUNC4(MIU_CONTROL_REG, reg->MMPR1, par);
		par->SavageWaitIdle(par);
		FUNC4(STREAMS_TIMEOUT_REG, reg->MMPR2, par);
		par->SavageWaitIdle(par);
		FUNC4(MISC_TIMEOUT_REG, reg->MMPR3, par);
	}

	FUNC14(0x3d4, 0x66, par);
	FUNC14(0x3d5, cr66, par);
	FUNC14(0x3d4, 0x3a, par);
	FUNC14(0x3d5, cr3a, par);

	FUNC1(par);
	FUNC10(par, 0);
}