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
struct ralink_usb_phy {int /*<<< orphan*/  rsthost; int /*<<< orphan*/  rstdev; int /*<<< orphan*/  clk; int /*<<< orphan*/  sysctl; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_SYSC_REG_CLKCFG1 ; 
 struct ralink_usb_phy* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *_phy)
{
	struct ralink_usb_phy *phy = FUNC0(_phy);

	/* disable the phy */
	FUNC1(phy->sysctl, RT_SYSC_REG_CLKCFG1,
			   phy->clk, 0);

	/* assert the reset lines */
	FUNC2(phy->rstdev);
	FUNC2(phy->rsthost);

	return 0;
}