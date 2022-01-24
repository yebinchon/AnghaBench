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
struct micro_battery {int /*<<< orphan*/  wq; int /*<<< orphan*/  update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  micro_ac_power ; 
 int /*<<< orphan*/  micro_batt_power ; 
 struct micro_battery* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)

{
	struct micro_battery *mb = FUNC2(pdev);

	FUNC3(micro_ac_power);
	FUNC3(micro_batt_power);
	FUNC0(&mb->update);
	FUNC1(mb->wq);

	return 0;
}