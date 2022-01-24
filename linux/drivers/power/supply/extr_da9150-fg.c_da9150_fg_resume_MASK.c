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
struct da9150_fg {int /*<<< orphan*/  work; scalar_t__ interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct da9150_fg* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct da9150_fg *fg = FUNC1(pdev);

	/*
	 * Trigger SOC check to happen now so as to indicate any value change
	 * since last check before suspend.
	 */
	if (fg->interval)
		FUNC0(&fg->work);

	return 0;
}