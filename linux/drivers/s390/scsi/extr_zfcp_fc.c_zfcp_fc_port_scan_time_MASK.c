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
struct zfcp_adapter {scalar_t__ next_port_scan; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_scan_ratelimit ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct zfcp_adapter *adapter)
{
	unsigned long interval = FUNC0(port_scan_ratelimit);
	unsigned long backoff = FUNC0(FUNC1());

	adapter->next_port_scan = jiffies + interval + backoff;
}