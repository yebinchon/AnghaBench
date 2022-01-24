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
struct watchdog_device {unsigned int max_hw_heartbeat_ms; int timeout; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct watchdog_device*) ; 
 scalar_t__ FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static inline bool FUNC2(struct watchdog_device *wdd)
{
	/* All variables in milli-seconds */
	unsigned int hm = wdd->max_hw_heartbeat_ms;
	unsigned int t = wdd->timeout * 1000;

	/*
	 * A worker to generate heartbeat requests is needed if all of the
	 * following conditions are true.
	 * - Userspace activated the watchdog.
	 * - The driver provided a value for the maximum hardware timeout, and
	 *   thus is aware that the framework supports generating heartbeat
	 *   requests.
	 * - Userspace requests a longer timeout than the hardware can handle.
	 *
	 * Alternatively, if userspace has not opened the watchdog
	 * device, we take care of feeding the watchdog if it is
	 * running.
	 */
	return (hm && FUNC0(wdd) && t > hm) ||
		(t && !FUNC0(wdd) && FUNC1(wdd));
}