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
struct pm8916_wdt {int /*<<< orphan*/  wdev; scalar_t__ baseaddr; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int PMIC_WD_BARK_STS_BIT ; 
 scalar_t__ PON_INT_RT_STS ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	struct pm8916_wdt *wdt = arg;
	int err, sts;

	err = FUNC0(wdt->regmap, wdt->baseaddr + PON_INT_RT_STS, &sts);
	if (err)
		return IRQ_HANDLED;

	if (sts & PMIC_WD_BARK_STS_BIT)
		FUNC1(&wdt->wdev);

	return IRQ_HANDLED;
}