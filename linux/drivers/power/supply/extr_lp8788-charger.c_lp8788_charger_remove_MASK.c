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
struct platform_device {int dummy; } ;
struct lp8788_charger {int /*<<< orphan*/  charger_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct lp8788_charger*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp8788_charger*) ; 
 int /*<<< orphan*/  FUNC3 (struct lp8788_charger*) ; 
 struct lp8788_charger* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct lp8788_charger *pchg = FUNC4(pdev);

	FUNC0(&pchg->charger_work);
	FUNC1(pdev, pchg);
	FUNC2(pchg);
	FUNC3(pchg);

	return 0;
}