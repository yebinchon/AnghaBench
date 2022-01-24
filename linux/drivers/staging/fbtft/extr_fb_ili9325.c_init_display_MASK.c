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
struct TYPE_4__ {scalar_t__ cs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int bt ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fbtft_par*) ; 
 int vc ; 
 int vcm ; 
 int vdv ; 
 int vrh ; 
 int /*<<< orphan*/  FUNC4 (struct fbtft_par*,int,int) ; 

__attribute__((used)) static int FUNC5(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	if (par->gpio.cs)
		FUNC1(par->gpio.cs, 0);  /* Activate chip */

	bt &= 0x07;
	vc &= 0x07;
	vrh &= 0x0f;
	vdv &= 0x1f;
	vcm &= 0x3f;

	/* Initialization sequence from ILI9325 Application Notes */

	/* ----------- Start Initial Sequence ----------- */
	FUNC4(par, 0x00E3, 0x3008); /* Set internal timing */
	FUNC4(par, 0x00E7, 0x0012); /* Set internal timing */
	FUNC4(par, 0x00EF, 0x1231); /* Set internal timing */
	FUNC4(par, 0x0001, 0x0100); /* set SS and SM bit */
	FUNC4(par, 0x0002, 0x0700); /* set 1 line inversion */
	FUNC4(par, 0x0004, 0x0000); /* Resize register */
	FUNC4(par, 0x0008, 0x0207); /* set the back porch and front porch */
	FUNC4(par, 0x0009, 0x0000); /* set non-display area refresh cycle */
	FUNC4(par, 0x000A, 0x0000); /* FMARK function */
	FUNC4(par, 0x000C, 0x0000); /* RGB interface setting */
	FUNC4(par, 0x000D, 0x0000); /* Frame marker Position */
	FUNC4(par, 0x000F, 0x0000); /* RGB interface polarity */

	/* ----------- Power On sequence ----------- */
	FUNC4(par, 0x0010, 0x0000); /* SAP, BT[3:0], AP, DSTB, SLP, STB */
	FUNC4(par, 0x0011, 0x0007); /* DC1[2:0], DC0[2:0], VC[2:0] */
	FUNC4(par, 0x0012, 0x0000); /* VREG1OUT voltage */
	FUNC4(par, 0x0013, 0x0000); /* VDV[4:0] for VCOM amplitude */
	FUNC2(200); /* Dis-charge capacitor power voltage */
	FUNC4(par, 0x0010, /* SAP, BT[3:0], AP, DSTB, SLP, STB */
		FUNC0(12) | (bt << 8) | FUNC0(7) | FUNC0(4));
	FUNC4(par, 0x0011, 0x220 | vc); /* DC1[2:0], DC0[2:0], VC[2:0] */
	FUNC2(50); /* Delay 50ms */
	FUNC4(par, 0x0012, vrh); /* Internal reference voltage= Vci; */
	FUNC2(50); /* Delay 50ms */
	FUNC4(par, 0x0013, vdv << 8); /* Set VDV[4:0] for VCOM amplitude */
	FUNC4(par, 0x0029, vcm); /* Set VCM[5:0] for VCOMH */
	FUNC4(par, 0x002B, 0x000C); /* Set Frame Rate */
	FUNC2(50); /* Delay 50ms */
	FUNC4(par, 0x0020, 0x0000); /* GRAM horizontal Address */
	FUNC4(par, 0x0021, 0x0000); /* GRAM Vertical Address */

	/*------------------ Set GRAM area --------------- */
	FUNC4(par, 0x0050, 0x0000); /* Horizontal GRAM Start Address */
	FUNC4(par, 0x0051, 0x00EF); /* Horizontal GRAM End Address */
	FUNC4(par, 0x0052, 0x0000); /* Vertical GRAM Start Address */
	FUNC4(par, 0x0053, 0x013F); /* Vertical GRAM Start Address */
	FUNC4(par, 0x0060, 0xA700); /* Gate Scan Line */
	FUNC4(par, 0x0061, 0x0001); /* NDL,VLE, REV */
	FUNC4(par, 0x006A, 0x0000); /* set scrolling line */

	/*-------------- Partial Display Control --------- */
	FUNC4(par, 0x0080, 0x0000);
	FUNC4(par, 0x0081, 0x0000);
	FUNC4(par, 0x0082, 0x0000);
	FUNC4(par, 0x0083, 0x0000);
	FUNC4(par, 0x0084, 0x0000);
	FUNC4(par, 0x0085, 0x0000);

	/*-------------- Panel Control ------------------- */
	FUNC4(par, 0x0090, 0x0010);
	FUNC4(par, 0x0092, 0x0600);
	FUNC4(par, 0x0007, 0x0133); /* 262K color and display ON */

	return 0;
}