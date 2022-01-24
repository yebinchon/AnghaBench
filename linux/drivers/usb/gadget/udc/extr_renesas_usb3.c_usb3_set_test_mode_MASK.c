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
struct renesas_usb3 {int /*<<< orphan*/  test_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int USB20_CON_B2_TSTMOD_EN ; 
 int USB20_CON_B2_TSTMOD_MASK ; 
 int /*<<< orphan*/  USB3_USB20_CON ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct renesas_usb3 *usb3)
{
	u32 val = FUNC2(usb3, USB3_USB20_CON);

	val &= ~USB20_CON_B2_TSTMOD_MASK;
	val |= FUNC0(usb3->test_mode);
	FUNC3(usb3, val | USB20_CON_B2_TSTMOD_EN, USB3_USB20_CON);
	if (!usb3->test_mode)
		FUNC1(usb3, USB20_CON_B2_TSTMOD_EN, USB3_USB20_CON);
}