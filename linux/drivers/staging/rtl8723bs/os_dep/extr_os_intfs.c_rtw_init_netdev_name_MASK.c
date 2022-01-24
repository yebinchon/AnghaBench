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
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

int FUNC3(struct net_device *pnetdev, const char *ifname)
{
	if (FUNC0(pnetdev, ifname) < 0) {
		FUNC2("dev_alloc_name, fail for %s\n", ifname);
		return 1;
	}
	FUNC1(pnetdev);
	/* rtw_netif_stop_queue(pnetdev); */

	return 0;
}