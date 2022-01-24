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
struct inno_hdmi_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK3328_BANDGAP_ENABLE ; 
 int /*<<< orphan*/  RK3328_POST_PLL_POWER_DOWN ; 
 int /*<<< orphan*/  RK3328_TMDS_DRIVER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inno_hdmi_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct inno_hdmi_phy *inno)
{
	FUNC0(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE, 0);
	FUNC0(inno, 0xb0, RK3328_BANDGAP_ENABLE, 0);
	FUNC0(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
			 RK3328_POST_PLL_POWER_DOWN);

	/* Disable PHY IRQ */
	FUNC1(inno, 0x05, 0);
	FUNC1(inno, 0x07, 0);
}