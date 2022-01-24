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
struct nvec_chip {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  nvec_status_notifier; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvec_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvec_chip*,int /*<<< orphan*/ *) ; 
 struct nvec_chip* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/ * pm_power_off ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct nvec_chip *nvec = FUNC4(pdev);

	FUNC2(nvec, false);
	FUNC1(nvec->dev);
	FUNC3(nvec, &nvec->nvec_status_notifier);
	FUNC0(&nvec->rx_work);
	FUNC0(&nvec->tx_work);
	/* FIXME: needs check whether nvec is responsible for power off */
	pm_power_off = NULL;

	return 0;
}