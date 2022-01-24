#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct ulpi {TYPE_1__ dev; } ;
struct qcom_usb_hsic_phy {struct clk* phy; struct clk* cal_sleep_clk; struct clk* cal_clk; struct clk* phy_clk; struct clk* pctl; struct ulpi* ulpi; } ;
struct phy_provider {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct phy_provider*) ; 
 struct clk* FUNC3 (TYPE_1__*,char*) ; 
 struct qcom_usb_hsic_phy* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct clk* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int /*<<< orphan*/  FUNC8 (struct clk*,struct qcom_usb_hsic_phy*) ; 
 int /*<<< orphan*/  qcom_usb_hsic_phy_ops ; 
 int /*<<< orphan*/  FUNC9 (struct ulpi*,struct qcom_usb_hsic_phy*) ; 

__attribute__((used)) static int FUNC10(struct ulpi *ulpi)
{
	struct qcom_usb_hsic_phy *uphy;
	struct phy_provider *p;
	struct clk *clk;

	uphy = FUNC4(&ulpi->dev, sizeof(*uphy), GFP_KERNEL);
	if (!uphy)
		return -ENOMEM;
	FUNC9(ulpi, uphy);

	uphy->ulpi = ulpi;
	uphy->pctl = FUNC7(&ulpi->dev);
	if (FUNC0(uphy->pctl))
		return FUNC1(uphy->pctl);

	uphy->phy_clk = clk = FUNC3(&ulpi->dev, "phy");
	if (FUNC0(clk))
		return FUNC1(clk);

	uphy->cal_clk = clk = FUNC3(&ulpi->dev, "cal");
	if (FUNC0(clk))
		return FUNC1(clk);

	uphy->cal_sleep_clk = clk = FUNC3(&ulpi->dev, "cal_sleep");
	if (FUNC0(clk))
		return FUNC1(clk);

	uphy->phy = FUNC6(&ulpi->dev, ulpi->dev.of_node,
				    &qcom_usb_hsic_phy_ops);
	if (FUNC0(uphy->phy))
		return FUNC1(uphy->phy);
	FUNC8(uphy->phy, uphy);

	p = FUNC5(&ulpi->dev, of_phy_simple_xlate);
	return FUNC2(p);
}