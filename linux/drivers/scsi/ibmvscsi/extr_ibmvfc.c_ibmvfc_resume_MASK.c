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
struct vio_dev {int dummy; } ;
struct ibmvfc_host {TYPE_1__* host; int /*<<< orphan*/  tasklet; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct ibmvfc_host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	unsigned long flags;
	struct ibmvfc_host *vhost = FUNC0(dev);
	struct vio_dev *vdev = FUNC4(dev);

	FUNC1(vhost->host->host_lock, flags);
	FUNC5(vdev);
	FUNC3(&vhost->tasklet);
	FUNC2(vhost->host->host_lock, flags);
	return 0;
}