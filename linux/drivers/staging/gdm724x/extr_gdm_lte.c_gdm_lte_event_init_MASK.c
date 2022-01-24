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
struct TYPE_2__ {scalar_t__ ref_cnt; scalar_t__ sock; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  NETLINK_LTE ; 
 int /*<<< orphan*/  gdm_lte_event_rcv ; 
 TYPE_1__ lte_event ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(void)
{
	if (lte_event.ref_cnt == 0)
		lte_event.sock = FUNC0(NETLINK_LTE, gdm_lte_event_rcv);

	if (lte_event.sock) {
		lte_event.ref_cnt++;
		return 0;
	}

	FUNC1("event init failed\n");
	return -ENODATA;
}