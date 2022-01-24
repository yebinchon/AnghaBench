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
struct qcom_usb_hsic_phy {int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  cal_clk; int /*<<< orphan*/  cal_sleep_clk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qcom_usb_hsic_phy* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct qcom_usb_hsic_phy *uphy = FUNC1(phy);

	FUNC0(uphy->cal_sleep_clk);
	FUNC0(uphy->cal_clk);
	FUNC0(uphy->phy_clk);

	return 0;
}