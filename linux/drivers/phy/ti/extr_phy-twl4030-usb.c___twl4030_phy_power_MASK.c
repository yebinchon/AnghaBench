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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_usb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_PWR_CTRL ; 
 int /*<<< orphan*/  PHY_PWR_PHYPWD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct twl4030_usb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct twl4030_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct twl4030_usb *twl, int on)
{
	u8 pwr = FUNC1(twl, PHY_PWR_CTRL);

	if (on)
		pwr &= ~PHY_PWR_PHYPWD;
	else
		pwr |= PHY_PWR_PHYPWD;

	FUNC0(FUNC2(twl, PHY_PWR_CTRL, pwr) < 0);
}