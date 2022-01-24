#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tps80031_regulator {int config_flags; int /*<<< orphan*/  dev; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  enable_time; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOST_HW_PWR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OPA_MODE_EN ; 
 int /*<<< orphan*/  TPS80031_CHARGERUSB_CTRL1 ; 
 int /*<<< orphan*/  TPS80031_CHARGERUSB_CTRL3 ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID2 ; 
 int TPS80031_VBUS_DISCHRG_EN_PDN ; 
 int /*<<< orphan*/  USB_VBUS_CTRL_CLR ; 
 int /*<<< orphan*/  USB_VBUS_CTRL_SET ; 
 int /*<<< orphan*/  VBUS_DISCHRG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tps80031_regulator* FUNC3 (struct regulator_dev*) ; 
 struct device* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct regulator_dev *rdev)
{
	struct tps80031_regulator *ri = FUNC3(rdev);
	struct device *parent = FUNC4(rdev);
	int ret = 0;

	if (ri->config_flags & TPS80031_VBUS_DISCHRG_EN_PDN) {
		ret = FUNC6(parent, TPS80031_SLAVE_ID2,
			USB_VBUS_CTRL_SET, VBUS_DISCHRG);
		if (ret < 0) {
			FUNC1(ri->dev, "reg 0x%02x write failed, e = %d\n",
				USB_VBUS_CTRL_SET, ret);
			return ret;
		}
	}

	ret = FUNC5(parent, TPS80031_SLAVE_ID2,
			TPS80031_CHARGERUSB_CTRL1,  OPA_MODE_EN);
	if (ret < 0) {
		FUNC1(ri->dev, "reg 0x%02x clearbit failed, e = %d\n",
				TPS80031_CHARGERUSB_CTRL1, ret);
		return ret;
	}

	ret = FUNC5(parent, TPS80031_SLAVE_ID2,
				TPS80031_CHARGERUSB_CTRL3, BOOST_HW_PWR_EN);
	if (ret < 0) {
		FUNC1(ri->dev, "reg 0x%02x clearbit failed, e = %d\n",
				TPS80031_CHARGERUSB_CTRL3, ret);
		return ret;
	}

	FUNC2(FUNC0(ri->rinfo->desc.enable_time, 1000));
	if (ri->config_flags & TPS80031_VBUS_DISCHRG_EN_PDN) {
		ret = FUNC6(parent, TPS80031_SLAVE_ID2,
			USB_VBUS_CTRL_CLR, VBUS_DISCHRG);
		if (ret < 0) {
			FUNC1(ri->dev, "reg 0x%02x write failed, e = %d\n",
					USB_VBUS_CTRL_CLR, ret);
			return ret;
		}
	}
	return ret;
}