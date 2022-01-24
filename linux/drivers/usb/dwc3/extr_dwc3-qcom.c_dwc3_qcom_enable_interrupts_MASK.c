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
struct dwc3_qcom {scalar_t__ ss_phy_irq; scalar_t__ dm_hs_phy_irq; scalar_t__ dp_hs_phy_irq; scalar_t__ hs_phy_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct dwc3_qcom *qcom)
{
	if (qcom->hs_phy_irq) {
		FUNC0(qcom->hs_phy_irq);
		FUNC1(qcom->hs_phy_irq);
	}

	if (qcom->dp_hs_phy_irq) {
		FUNC0(qcom->dp_hs_phy_irq);
		FUNC1(qcom->dp_hs_phy_irq);
	}

	if (qcom->dm_hs_phy_irq) {
		FUNC0(qcom->dm_hs_phy_irq);
		FUNC1(qcom->dm_hs_phy_irq);
	}

	if (qcom->ss_phy_irq) {
		FUNC0(qcom->ss_phy_irq);
		FUNC1(qcom->ss_phy_irq);
	}
}