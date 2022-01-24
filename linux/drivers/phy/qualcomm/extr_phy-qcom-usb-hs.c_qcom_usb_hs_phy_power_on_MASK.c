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
struct ulpi_seq {int /*<<< orphan*/  val; scalar_t__ addr; } ;
struct ulpi {int /*<<< orphan*/  dev; } ;
struct qcom_usb_hs_phy {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  sleep_clk; int /*<<< orphan*/  v1p8; int /*<<< orphan*/  v3p3; int /*<<< orphan*/  vbus_notify; scalar_t__ vbus_edev; scalar_t__ reset; struct ulpi_seq* init_seq; struct ulpi* ulpi; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
 scalar_t__ ULPI_EXT_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct qcom_usb_hs_phy* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (struct ulpi*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct phy *phy)
{
	struct qcom_usb_hs_phy *uphy = FUNC4(phy);
	struct ulpi *ulpi = uphy->ulpi;
	const struct ulpi_seq *seq;
	int ret, state;

	ret = FUNC1(uphy->ref_clk);
	if (ret)
		return ret;

	ret = FUNC1(uphy->sleep_clk);
	if (ret)
		goto err_sleep;

	ret = FUNC8(uphy->v1p8, 50000);
	if (ret < 0)
		goto err_1p8;

	ret = FUNC7(uphy->v1p8);
	if (ret)
		goto err_1p8;

	ret = FUNC9(uphy->v3p3, 3050000, 3300000,
					    3300000);
	if (ret)
		goto err_3p3;

	ret = FUNC8(uphy->v3p3, 50000);
	if (ret < 0)
		goto err_3p3;

	ret = FUNC7(uphy->v3p3);
	if (ret)
		goto err_3p3;

	for (seq = uphy->init_seq; seq->addr; seq++) {
		ret = FUNC11(ulpi, ULPI_EXT_VENDOR_SPECIFIC + seq->addr,
				 seq->val);
		if (ret)
			goto err_ulpi;
	}

	if (uphy->reset) {
		ret = FUNC10(uphy->reset);
		if (ret)
			goto err_ulpi;
	}

	if (uphy->vbus_edev) {
		state = FUNC3(uphy->vbus_edev, EXTCON_USB);
		/* setup initial state */
		FUNC5(&uphy->vbus_notify, state,
					      uphy->vbus_edev);
		ret = FUNC2(&ulpi->dev, uphy->vbus_edev,
				EXTCON_USB, &uphy->vbus_notify);
		if (ret)
			goto err_ulpi;
	}

	return 0;
err_ulpi:
	FUNC6(uphy->v3p3);
err_3p3:
	FUNC6(uphy->v1p8);
err_1p8:
	FUNC0(uphy->sleep_clk);
err_sleep:
	FUNC0(uphy->ref_clk);
	return ret;
}