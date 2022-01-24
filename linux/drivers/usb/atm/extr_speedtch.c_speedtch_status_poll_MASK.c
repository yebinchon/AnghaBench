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
struct timer_list {int dummy; } ;
struct speedtch_instance_data {scalar_t__ poll_delay; int /*<<< orphan*/  usbatm; int /*<<< orphan*/  status_check_timer; int /*<<< orphan*/  status_check_work; } ;

/* Variables and functions */
 scalar_t__ MAX_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct speedtch_instance_data* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct speedtch_instance_data* instance ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  status_check_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct speedtch_instance_data *instance = FUNC1(instance, t,
						             status_check_timer);

	FUNC4(&instance->status_check_work);

	/* The following check is racy, but the race is harmless */
	if (instance->poll_delay < MAX_POLL_DELAY)
		FUNC2(&instance->status_check_timer, jiffies + FUNC3(instance->poll_delay));
	else
		FUNC0(instance->usbatm, "Too many failures - disabling line status polling\n");
}