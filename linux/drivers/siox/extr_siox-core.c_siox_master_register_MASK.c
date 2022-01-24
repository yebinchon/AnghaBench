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
struct siox_master {int /*<<< orphan*/  poll_thread; int /*<<< orphan*/  dev; scalar_t__ active; int /*<<< orphan*/  busno; int /*<<< orphan*/  last_poll; int /*<<< orphan*/  devices; int /*<<< orphan*/  lock; int /*<<< orphan*/  pushpull; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct siox_master*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  siox_is_registered ; 
 int /*<<< orphan*/  siox_poll_thread ; 

int FUNC8(struct siox_master *smaster)
{
	int ret;

	if (!siox_is_registered)
		return -EPROBE_DEFER;

	if (!smaster->pushpull)
		return -EINVAL;

	FUNC3(&smaster->dev, "siox-%d", smaster->busno);

	FUNC7(&smaster->lock);
	FUNC0(&smaster->devices);

	smaster->last_poll = jiffies;
	smaster->poll_thread = FUNC5(siox_poll_thread, smaster,
					   "siox-%d", smaster->busno);
	if (FUNC1(smaster->poll_thread)) {
		smaster->active = 0;
		return FUNC2(smaster->poll_thread);
	}

	ret = FUNC4(&smaster->dev);
	if (ret)
		FUNC6(smaster->poll_thread);

	return ret;
}