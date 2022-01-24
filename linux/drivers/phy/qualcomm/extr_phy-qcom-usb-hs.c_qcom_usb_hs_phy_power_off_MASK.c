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
struct qcom_usb_hs_phy {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  sleep_clk; int /*<<< orphan*/  v1p8; int /*<<< orphan*/  v3p3; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qcom_usb_hs_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct qcom_usb_hs_phy *uphy = FUNC1(phy);

	FUNC2(uphy->v3p3);
	FUNC2(uphy->v1p8);
	FUNC0(uphy->sleep_clk);
	FUNC0(uphy->ref_clk);

	return 0;
}