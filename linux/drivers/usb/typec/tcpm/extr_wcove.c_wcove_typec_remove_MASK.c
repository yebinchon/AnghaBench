#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;
struct wcove_typec {TYPE_1__ tcpc; int /*<<< orphan*/  tcpm; int /*<<< orphan*/  regmap; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBC_IRQMASK1 ; 
 unsigned int USBC_IRQMASK1_ALL ; 
 int /*<<< orphan*/  USBC_IRQMASK2 ; 
 unsigned int USBC_IRQMASK2_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wcove_typec* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct wcove_typec *wcove = FUNC1(pdev);
	unsigned int val;

	/* Mask everything */
	FUNC2(wcove->regmap, USBC_IRQMASK1, &val);
	FUNC3(wcove->regmap, USBC_IRQMASK1, val | USBC_IRQMASK1_ALL);
	FUNC2(wcove->regmap, USBC_IRQMASK2, &val);
	FUNC3(wcove->regmap, USBC_IRQMASK2, val | USBC_IRQMASK2_ALL);

	FUNC4(wcove->tcpm);
	FUNC0(wcove->tcpc.fwnode);

	return 0;
}