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
struct platform_device {int id; } ;
struct nvec_power {int /*<<< orphan*/  notifier; int /*<<< orphan*/  nvec; int /*<<< orphan*/  poller; } ;

/* Variables and functions */
#define  AC 129 
#define  BAT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvec_bat_psy ; 
 int /*<<< orphan*/  nvec_psy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvec_power* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct nvec_power *power = FUNC2(pdev);

	FUNC0(&power->poller);
	FUNC1(power->nvec, &power->notifier);
	switch (pdev->id) {
	case AC:
		FUNC3(nvec_psy);
		break;
	case BAT:
		FUNC3(nvec_bat_psy);
	}

	return 0;
}