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
struct tps80031_regulator {int /*<<< orphan*/  dev; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOST_HW_PWR_EN ; 
 int /*<<< orphan*/  OPA_MODE_EN ; 
 int /*<<< orphan*/  TPS80031_CHARGERUSB_CTRL1 ; 
 int /*<<< orphan*/  TPS80031_CHARGERUSB_CTRL3 ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct tps80031_regulator* FUNC1 (struct regulator_dev*) ; 
 struct device* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct tps80031_regulator *ri = FUNC1(rdev);
	struct device *parent = FUNC2(rdev);
	int ret;

	ret = FUNC3(parent, TPS80031_SLAVE_ID2,
				TPS80031_CHARGERUSB_CTRL1, OPA_MODE_EN);
	if (ret < 0) {
		FUNC0(ri->dev, "reg 0x%02x read failed, e = %d\n",
					TPS80031_CHARGERUSB_CTRL1, ret);
		return ret;
	}

	ret = FUNC3(parent, TPS80031_SLAVE_ID2,
				TPS80031_CHARGERUSB_CTRL3, BOOST_HW_PWR_EN);
	if (ret < 0) {
		FUNC0(ri->dev, "reg 0x%02x read failed, e = %d\n",
			TPS80031_CHARGERUSB_CTRL3, ret);
		return ret;
	}
	return ret;
}