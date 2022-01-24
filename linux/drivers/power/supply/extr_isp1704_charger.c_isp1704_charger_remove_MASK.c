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
struct isp1704_charger {int /*<<< orphan*/  psy; int /*<<< orphan*/  nb; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp1704_charger*,int /*<<< orphan*/ ) ; 
 struct isp1704_charger* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct isp1704_charger *isp = FUNC1(pdev);

	FUNC3(isp->phy, &isp->nb);
	FUNC2(isp->psy);
	FUNC0(isp, 0);

	return 0;
}