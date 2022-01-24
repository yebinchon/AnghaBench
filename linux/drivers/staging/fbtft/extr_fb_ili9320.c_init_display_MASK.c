#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__* info; TYPE_1__ fbtftops; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fbtft_par*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC4 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC5 (struct fbtft_par*,int,int) ; 

__attribute__((used)) static int FUNC6(struct fbtft_par *par)
{
	unsigned int devcode;

	par->fbtftops.reset(par);

	devcode = FUNC3(par);
	FUNC1(DEBUG_INIT_DISPLAY, par, "Device code: 0x%04X\n",
		      devcode);
	if ((devcode != 0x0000) && (devcode != 0x9320))
		FUNC0(par->info->device,
			 "Unrecognized Device code: 0x%04X (expected 0x9320)\n",
			devcode);

	/* Initialization sequence from ILI9320 Application Notes */

	/* *********** Start Initial Sequence ********* */
	/* Set the Vcore voltage and this setting is must. */
	FUNC5(par, 0x00E5, 0x8000);

	/* Start internal OSC. */
	FUNC5(par, 0x0000, 0x0001);

	/* set SS and SM bit */
	FUNC5(par, 0x0001, 0x0100);

	/* set 1 line inversion */
	FUNC5(par, 0x0002, 0x0700);

	/* Resize register */
	FUNC5(par, 0x0004, 0x0000);

	/* set the back and front porch */
	FUNC5(par, 0x0008, 0x0202);

	/* set non-display area refresh cycle */
	FUNC5(par, 0x0009, 0x0000);

	/* FMARK function */
	FUNC5(par, 0x000A, 0x0000);

	/* RGB interface setting */
	FUNC5(par, 0x000C, 0x0000);

	/* Frame marker Position */
	FUNC5(par, 0x000D, 0x0000);

	/* RGB interface polarity */
	FUNC5(par, 0x000F, 0x0000);

	/* ***********Power On sequence *************** */
	/* SAP, BT[3:0], AP, DSTB, SLP, STB */
	FUNC5(par, 0x0010, 0x0000);

	/* DC1[2:0], DC0[2:0], VC[2:0] */
	FUNC5(par, 0x0011, 0x0007);

	/* VREG1OUT voltage */
	FUNC5(par, 0x0012, 0x0000);

	/* VDV[4:0] for VCOM amplitude */
	FUNC5(par, 0x0013, 0x0000);

	/* Dis-charge capacitor power voltage */
	FUNC2(200);

	/* SAP, BT[3:0], AP, DSTB, SLP, STB */
	FUNC5(par, 0x0010, 0x17B0);

	/* R11h=0x0031 at VCI=3.3V DC1[2:0], DC0[2:0], VC[2:0] */
	FUNC5(par, 0x0011, 0x0031);
	FUNC2(50);

	/* R12h=0x0138 at VCI=3.3V VREG1OUT voltage */
	FUNC5(par, 0x0012, 0x0138);
	FUNC2(50);

	/* R13h=0x1800 at VCI=3.3V VDV[4:0] for VCOM amplitude */
	FUNC5(par, 0x0013, 0x1800);

	/* R29h=0x0008 at VCI=3.3V VCM[4:0] for VCOMH */
	FUNC5(par, 0x0029, 0x0008);
	FUNC2(50);

	/* GRAM horizontal Address */
	FUNC5(par, 0x0020, 0x0000);

	/* GRAM Vertical Address */
	FUNC5(par, 0x0021, 0x0000);

	/* ------------------ Set GRAM area --------------- */
	/* Horizontal GRAM Start Address */
	FUNC5(par, 0x0050, 0x0000);

	/* Horizontal GRAM End Address */
	FUNC5(par, 0x0051, 0x00EF);

	/* Vertical GRAM Start Address */
	FUNC5(par, 0x0052, 0x0000);

	/* Vertical GRAM End Address */
	FUNC5(par, 0x0053, 0x013F);

	/* Gate Scan Line */
	FUNC5(par, 0x0060, 0x2700);

	/* NDL,VLE, REV */
	FUNC5(par, 0x0061, 0x0001);

	/* set scrolling line */
	FUNC5(par, 0x006A, 0x0000);

	/* -------------- Partial Display Control --------- */
	FUNC5(par, 0x0080, 0x0000);
	FUNC5(par, 0x0081, 0x0000);
	FUNC5(par, 0x0082, 0x0000);
	FUNC5(par, 0x0083, 0x0000);
	FUNC5(par, 0x0084, 0x0000);
	FUNC5(par, 0x0085, 0x0000);

	/* -------------- Panel Control ------------------- */
	FUNC5(par, 0x0090, 0x0010);
	FUNC5(par, 0x0092, 0x0000);
	FUNC5(par, 0x0093, 0x0003);
	FUNC5(par, 0x0095, 0x0110);
	FUNC5(par, 0x0097, 0x0000);
	FUNC5(par, 0x0098, 0x0000);
	FUNC5(par, 0x0007, 0x0173); /* 262K color and display ON */

	return 0;
}