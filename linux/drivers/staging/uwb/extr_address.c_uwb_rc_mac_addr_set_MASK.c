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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_mac_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UWB_ADDR_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uwb_rc*,struct uwb_mac_addr const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct uwb_rc *rc,
			const struct uwb_mac_addr *addr)
{
	int result = -EINVAL;
	FUNC0(&rc->uwb_dev.mutex);
	result = FUNC2(rc, addr, UWB_ADDR_MAC);
	FUNC1(&rc->uwb_dev.mutex);
	return result;
}