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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  aie_irq ; 
 int alarm_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	FUNC2(&rtc_lock);
	if (enabled) {
		if (!alarm_enabled) {
			FUNC1(aie_irq);
			alarm_enabled = 1;
		}
	} else {
		if (alarm_enabled) {
			FUNC0(aie_irq);
			alarm_enabled = 0;
		}
	}
	FUNC3(&rtc_lock);
	return 0;
}