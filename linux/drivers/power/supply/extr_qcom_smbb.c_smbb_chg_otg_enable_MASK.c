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
struct smbb_charger {int /*<<< orphan*/  dev; scalar_t__ addr; int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_CTL_EN ; 
 scalar_t__ SMBB_USB_OTG_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct smbb_charger* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct smbb_charger *chg = FUNC1(rdev);
	int rc;

	rc = FUNC2(chg->regmap, chg->addr + SMBB_USB_OTG_CTL,
				OTG_CTL_EN, OTG_CTL_EN);
	if (rc)
		FUNC0(chg->dev, "failed to update OTG_CTL\n");
	return rc;
}