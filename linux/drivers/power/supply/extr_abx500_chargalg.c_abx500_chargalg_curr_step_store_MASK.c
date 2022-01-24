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
struct TYPE_2__ {long curr_step; int curr_step_change; } ;
struct abx500_chargalg {int /*<<< orphan*/  dev; int /*<<< orphan*/  chargalg_work; int /*<<< orphan*/  chargalg_wq; TYPE_1__ curr_status; } ;
typedef  int ssize_t ;

/* Variables and functions */
 long CHARGALG_CURR_STEP_HIGH ; 
 long CHARGALG_CURR_STEP_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static ssize_t FUNC4(struct abx500_chargalg *di,
					       const char *buf, size_t length)
{
	long int param;
	int ret;

	ret = FUNC1(buf, 10, &param);
	if (ret < 0)
		return ret;

	di->curr_status.curr_step = param;
	if (di->curr_status.curr_step >= CHARGALG_CURR_STEP_LOW &&
		di->curr_status.curr_step <= CHARGALG_CURR_STEP_HIGH) {
		di->curr_status.curr_step_change = true;
		FUNC2(di->chargalg_wq, &di->chargalg_work);
	} else
		FUNC0(di->dev, "Wrong current step\n"
			"Enter 0. Disable AC/USB Charging\n"
			"1--100. Set AC/USB charging current step\n"
			"100. Enable AC/USB Charging\n");

	return FUNC3(buf);
}