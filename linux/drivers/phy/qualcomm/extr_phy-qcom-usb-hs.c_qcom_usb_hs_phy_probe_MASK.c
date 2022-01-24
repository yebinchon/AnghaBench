#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct ulpi {TYPE_2__ dev; } ;
struct reset_control {int dummy; } ;
typedef  struct reset_control regulator ;
struct TYPE_11__ {int /*<<< orphan*/  notifier_call; } ;
struct qcom_usb_hs_phy {struct reset_control* phy; TYPE_1__ vbus_notify; struct reset_control* vbus_edev; struct reset_control* reset; struct reset_control* v3p3; struct reset_control* v1p8; struct reset_control* sleep_clk; struct reset_control* ref_clk; TYPE_8__* init_seq; struct ulpi* ulpi; } ;
struct phy_provider {int dummy; } ;
typedef  struct reset_control clk ;
struct TYPE_13__ {scalar_t__ val; scalar_t__ addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int FUNC2 (struct phy_provider*) ; 
 struct reset_control* FUNC3 (TYPE_2__*,char*) ; 
 TYPE_8__* FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct qcom_usb_hs_phy* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct reset_control* FUNC8 (TYPE_2__*,char*) ; 
 struct reset_control* FUNC9 (TYPE_2__*,char*) ; 
 struct reset_control* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_phy_simple_xlate ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct reset_control*,struct qcom_usb_hs_phy*) ; 
 int /*<<< orphan*/  qcom_usb_hs_phy_ops ; 
 int /*<<< orphan*/  qcom_usb_hs_phy_vbus_notifier ; 
 int /*<<< orphan*/  FUNC14 (struct ulpi*,struct qcom_usb_hs_phy*) ; 

__attribute__((used)) static int FUNC15(struct ulpi *ulpi)
{
	struct qcom_usb_hs_phy *uphy;
	struct phy_provider *p;
	struct clk *clk;
	struct regulator *reg;
	struct reset_control *reset;
	int size;
	int ret;

	uphy = FUNC5(&ulpi->dev, sizeof(*uphy), GFP_KERNEL);
	if (!uphy)
		return -ENOMEM;
	FUNC14(ulpi, uphy);
	uphy->ulpi = ulpi;

	size = FUNC11(ulpi->dev.of_node, "qcom,init-seq");
	if (size < 0)
		size = 0;
	uphy->init_seq = FUNC4(&ulpi->dev, (size / 2) + 1,
					   sizeof(*uphy->init_seq), GFP_KERNEL);
	if (!uphy->init_seq)
		return -ENOMEM;
	ret = FUNC12(ulpi->dev.of_node, "qcom,init-seq",
					(u8 *)uphy->init_seq, size);
	if (ret && size)
		return ret;
	/* NUL terminate */
	uphy->init_seq[size / 2].addr = uphy->init_seq[size / 2].val = 0;

	uphy->ref_clk = clk = FUNC3(&ulpi->dev, "ref");
	if (FUNC0(clk))
		return FUNC1(clk);

	uphy->sleep_clk = clk = FUNC3(&ulpi->dev, "sleep");
	if (FUNC0(clk))
		return FUNC1(clk);

	uphy->v1p8 = reg = FUNC8(&ulpi->dev, "v1p8");
	if (FUNC0(reg))
		return FUNC1(reg);

	uphy->v3p3 = reg = FUNC8(&ulpi->dev, "v3p3");
	if (FUNC0(reg))
		return FUNC1(reg);

	uphy->reset = reset = FUNC9(&ulpi->dev, "por");
	if (FUNC0(reset)) {
		if (FUNC1(reset) == -EPROBE_DEFER)
			return FUNC1(reset);
		uphy->reset = NULL;
	}

	uphy->phy = FUNC7(&ulpi->dev, ulpi->dev.of_node,
				    &qcom_usb_hs_phy_ops);
	if (FUNC0(uphy->phy))
		return FUNC1(uphy->phy);

	uphy->vbus_edev = FUNC10(&ulpi->dev, 0);
	if (FUNC0(uphy->vbus_edev)) {
		if (FUNC1(uphy->vbus_edev) != -ENODEV)
			return FUNC1(uphy->vbus_edev);
		uphy->vbus_edev = NULL;
	}

	uphy->vbus_notify.notifier_call = qcom_usb_hs_phy_vbus_notifier;
	FUNC13(uphy->phy, uphy);

	p = FUNC6(&ulpi->dev, of_phy_simple_xlate);
	return FUNC2(p);
}