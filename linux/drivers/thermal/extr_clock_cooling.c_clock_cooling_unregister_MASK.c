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
struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {int /*<<< orphan*/  id; int /*<<< orphan*/  cdev; int /*<<< orphan*/  freq_table; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_rate_change_nb; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clock_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct thermal_cooling_device *cdev)
{
	struct clock_cooling_device *ccdev;

	if (!cdev)
		return;

	ccdev = cdev->devdata;

	FUNC0(ccdev->clk, &ccdev->clk_rate_change_nb);
	FUNC1(ccdev->dev, &ccdev->freq_table);

	FUNC3(ccdev->cdev);
	FUNC2(&clock_ida, ccdev->id);
}