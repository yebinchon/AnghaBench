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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_os_intfs_c_ ; 
 scalar_t__ FUNC1 (struct net_device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *pnetdev, const char *ifname)
{
	if (FUNC1(pnetdev, ifname) < 0)
		FUNC0(_module_os_intfs_c_, _drv_err_, ("dev_alloc_name, fail!\n"));

	FUNC2(pnetdev);
	return 0;
}