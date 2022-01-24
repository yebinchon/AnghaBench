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
struct virtio_device {int dummy; } ;
struct rproc_vdev {int /*<<< orphan*/  refcount; } ;
struct rproc {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct virtio_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rproc_vdev_release ; 
 struct rproc* FUNC4 (struct virtio_device*) ; 
 struct rproc_vdev* FUNC5 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct virtio_device *vdev = FUNC0(dev);
	struct rproc_vdev *rvdev = FUNC5(vdev);
	struct rproc *rproc = FUNC4(vdev);

	FUNC1(vdev);

	FUNC2(&rvdev->refcount, rproc_vdev_release);

	FUNC3(&rproc->dev);
}