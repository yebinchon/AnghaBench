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
struct mdev_device {struct device* iommu_device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mdev_device* FUNC0 (struct device*) ; 

struct device *FUNC1(struct device *dev)
{
	struct mdev_device *mdev = FUNC0(dev);

	return mdev->iommu_device;
}