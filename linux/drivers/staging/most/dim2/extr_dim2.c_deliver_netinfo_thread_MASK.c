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
struct dim2_hdm {int /*<<< orphan*/  mac_addrs; int /*<<< orphan*/  link_state; int /*<<< orphan*/  most_iface; int /*<<< orphan*/  (* on_netinfo ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ deliver_netinfo; int /*<<< orphan*/  netinfo_waitq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *data)
{
	struct dim2_hdm *dev = data;

	while (!FUNC0()) {
		FUNC2(dev->netinfo_waitq,
					 dev->deliver_netinfo ||
					 FUNC0());

		if (dev->deliver_netinfo) {
			dev->deliver_netinfo--;
			if (dev->on_netinfo) {
				dev->on_netinfo(&dev->most_iface,
						dev->link_state,
						dev->mac_addrs);
			}
		}
	}

	return 0;
}