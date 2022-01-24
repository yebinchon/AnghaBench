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
struct zfcp_adapter {unsigned long next_port_scan; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 scalar_t__ port_scan_backoff ; 
 scalar_t__ port_scan_ratelimit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct zfcp_adapter *adapter)
{
	unsigned long now = jiffies;
	unsigned long next = adapter->next_port_scan;
	unsigned long delay = 0, max;

	/* delay only needed within waiting period */
	if (FUNC3(now, next)) {
		delay = next - now;
		/* paranoia: never ever delay scans longer than specified */
		max = FUNC1(port_scan_ratelimit + port_scan_backoff);
		delay = FUNC0(delay, max);
	}

	FUNC2(adapter->work_queue, &adapter->scan_work, delay);
}