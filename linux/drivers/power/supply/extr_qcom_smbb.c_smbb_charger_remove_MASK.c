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
struct smbb_charger {scalar_t__ addr; int /*<<< orphan*/  regmap; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_EN ; 
 scalar_t__ SMBB_CHG_CTRL ; 
 struct smbb_charger* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct smbb_charger *chg;

	chg = FUNC0(pdev);

	FUNC1(chg->regmap, chg->addr + SMBB_CHG_CTRL, CTRL_EN, 0);

	return 0;
}