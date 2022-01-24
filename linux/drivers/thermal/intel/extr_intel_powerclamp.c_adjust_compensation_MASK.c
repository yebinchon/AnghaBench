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
struct powerclamp_calibration_data {scalar_t__ confidence; int steady_comp; } ;

/* Variables and functions */
 scalar_t__ CONFIDENCE_OK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 struct powerclamp_calibration_data* cal_data ; 
 int current_ratio ; 
 int /*<<< orphan*/  idle_wakeup_counter ; 
 unsigned int FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int set_target_ratio ; 

__attribute__((used)) static void FUNC3(int target_ratio, unsigned int win)
{
	int delta;
	struct powerclamp_calibration_data *d = &cal_data[target_ratio];

	/*
	 * adjust compensations if confidence level has not been reached or
	 * there are too many wakeups during the last idle injection period, we
	 * cannot trust the data for compensation.
	 */
	if (d->confidence >= CONFIDENCE_OK ||
		FUNC0(&idle_wakeup_counter) >
		win * FUNC1())
		return;

	delta = set_target_ratio - current_ratio;
	/* filter out bad data */
	if (delta >= 0 && delta <= (1+target_ratio/10)) {
		if (d->steady_comp)
			d->steady_comp =
				FUNC2(delta+d->steady_comp, 2)/2;
		else
			d->steady_comp = delta;
		d->confidence++;
	}
}