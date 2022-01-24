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
typedef  int u32 ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HSCOEFF0 ; 
 int /*<<< orphan*/  HSCOEFF1 ; 
 int /*<<< orphan*/  HSCOEFF2 ; 
 int /*<<< orphan*/  HSCOEFF3 ; 
 int /*<<< orphan*/  HSCOEFF4 ; 
 int /*<<< orphan*/  HSCOEFF5 ; 
 int /*<<< orphan*/  HSCOEFF6 ; 
 int /*<<< orphan*/  HSCOEFF7 ; 
 int /*<<< orphan*/  HSCOEFF8 ; 
 int /*<<< orphan*/  SHCTRL ; 
 int /*<<< orphan*/  SHCTRL_HINITIAL ; 
 int /*<<< orphan*/  SPOCTRL ; 
 int SPOCTRL_H_SC_BP ; 
 int SPOCTRL_VORDER_4TAP ; 
 int SPOCTRL_V_SC_BP ; 
 int /*<<< orphan*/  SVCTRL ; 
 int /*<<< orphan*/  SYSCFG ; 
 int /*<<< orphan*/  SYSRST ; 
 int SYSRST_RST ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  VSCOEFF0 ; 
 int /*<<< orphan*/  VSCOEFF1 ; 
 int /*<<< orphan*/  VSCOEFF2 ; 
 int /*<<< orphan*/  VSCOEFF3 ; 
 int /*<<< orphan*/  VSCOEFF4 ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct fb_info *fbi)
{
	u32 svctrl, shctrl;

	FUNC10(SYSRST_RST, SYSRST);

	/* setup a timeout, raise drive strength */
	FUNC10(0xffffff0c, SYSCFG);

	FUNC4(fbi);
	FUNC8(fbi);
	FUNC7(fbi);
	FUNC6(fbi);

	shctrl = FUNC5(SHCTRL);
	shctrl &= ~(FUNC0(SHCTRL_HINITIAL));
	shctrl |= FUNC1(4<<11);
	FUNC11(shctrl, SHCTRL);

	svctrl = FUNC2(1<<10) | FUNC3(1<<10);
	FUNC11(svctrl, SVCTRL);

	FUNC11(SPOCTRL_H_SC_BP | SPOCTRL_V_SC_BP | SPOCTRL_VORDER_4TAP
			, SPOCTRL);

	/* Those coefficients are good for scaling up. For scaling
	 * down, the application has to calculate them. */
	FUNC9(0xff000100, VSCOEFF0);
	FUNC9(0xfdfcfdfe, VSCOEFF1);
	FUNC9(0x170d0500, VSCOEFF2);
	FUNC9(0x3d372d22, VSCOEFF3);
	FUNC9(0x00000040, VSCOEFF4);

	FUNC9(0xff010100, HSCOEFF0);
	FUNC9(0x00000000, HSCOEFF1);
	FUNC9(0x02010000, HSCOEFF2);
	FUNC9(0x01020302, HSCOEFF3);
	FUNC9(0xf9fbfe00, HSCOEFF4);
	FUNC9(0xfbf7f6f7, HSCOEFF5);
	FUNC9(0x1c110700, HSCOEFF6);
	FUNC9(0x3e393127, HSCOEFF7);
	FUNC9(0x00000040, HSCOEFF8);

}