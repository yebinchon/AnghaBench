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
struct watchdog_device {int timeout; int /*<<< orphan*/  max_hw_heartbeat_ms; struct watchdog_core_data* wd_data; } ;
struct watchdog_core_data {int /*<<< orphan*/  open_deadline; int /*<<< orphan*/  last_keepalive; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static ktime_t FUNC7(struct watchdog_device *wdd)
{
	struct watchdog_core_data *wd_data = wdd->wd_data;
	unsigned int timeout_ms = wdd->timeout * 1000;
	ktime_t keepalive_interval;
	ktime_t last_heartbeat, latest_heartbeat;
	ktime_t virt_timeout;
	unsigned int hw_heartbeat_ms;

	if (FUNC6(wdd))
		virt_timeout = FUNC0(wd_data->last_keepalive,
					 FUNC5(timeout_ms));
	else
		virt_timeout = wd_data->open_deadline;

	hw_heartbeat_ms = FUNC4(timeout_ms, wdd->max_hw_heartbeat_ms);
	keepalive_interval = FUNC5(hw_heartbeat_ms / 2);

	/*
	 * To ensure that the watchdog times out wdd->timeout seconds
	 * after the most recent ping from userspace, the last
	 * worker ping has to come in hw_heartbeat_ms before this timeout.
	 */
	last_heartbeat = FUNC3(virt_timeout, FUNC5(hw_heartbeat_ms));
	latest_heartbeat = FUNC3(last_heartbeat, FUNC2());
	if (FUNC1(latest_heartbeat, keepalive_interval))
		return latest_heartbeat;
	return keepalive_interval;
}