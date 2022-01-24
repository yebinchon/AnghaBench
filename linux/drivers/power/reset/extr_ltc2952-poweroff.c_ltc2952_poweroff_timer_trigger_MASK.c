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
struct ltc2952_poweroff {int /*<<< orphan*/  dev; } ;
struct hrtimer {int dummy; } ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_NORESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ltc2952_poweroff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  timer_trigger ; 
 struct ltc2952_poweroff* FUNC3 (struct hrtimer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum hrtimer_restart
FUNC4(struct hrtimer *timer)
{
	struct ltc2952_poweroff *data = FUNC3(timer, timer_trigger);

	FUNC1(data);
	FUNC0(data->dev, "executing shutdown\n");
	FUNC2(true);

	return HRTIMER_NORESTART;
}