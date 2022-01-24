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
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  mon_setup ; 
 int FUNC2 (struct net_device*) ; 

struct net_device *FUNC3(void)
{
	struct net_device *dev;
	int err;

	dev = FUNC0(0, "mon%d", NET_NAME_UNKNOWN, mon_setup);
	if (!dev)
		goto fail;

	err = FUNC2(dev);
	if (err < 0)
		goto fail_free_dev;

	return dev;

fail_free_dev:
	FUNC1(dev);
fail:
	return NULL;
}