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
struct soc_camera_device {int /*<<< orphan*/  list; } ;
struct platform_device {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct soc_camera_device* FUNC2 (struct platform_device*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct soc_camera_device *icd = FUNC2(pdev);
	int i;

	if (!icd)
		return -EINVAL;

	i = pdev->id;
	if (i < 0)
		i = 0;

	/*
	 * In synchronous mode with static platform devices this is called in a
	 * loop from drivers/base/dd.c::driver_detach(), no parallel execution,
	 * no need to lock. In asynchronous case the caller -
	 * soc_camera_host_unregister() - already holds the lock
	 */
	if (FUNC3(i, device_map)) {
		FUNC0(i, device_map);
		FUNC1(&icd->list);
	}

	return 0;
}