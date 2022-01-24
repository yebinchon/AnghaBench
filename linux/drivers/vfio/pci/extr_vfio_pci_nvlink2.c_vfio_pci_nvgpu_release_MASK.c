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
struct vfio_pci_region {struct vfio_pci_nvgpu_data* data; } ;
struct vfio_pci_nvgpu_data {TYPE_1__* gpdev; int /*<<< orphan*/  group_notifier; scalar_t__ mm; int /*<<< orphan*/  mem; } ;
struct vfio_pci_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFIO_GROUP_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_nvgpu_data*) ; 
 long FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vfio_pci_device *vdev,
		struct vfio_pci_region *region)
{
	struct vfio_pci_nvgpu_data *data = region->data;
	long ret;

	/* If there were any mappings at all... */
	if (data->mm) {
		ret = FUNC2(data->mm, data->mem);
		FUNC0(ret);

		FUNC3(data->mm);
	}

	FUNC5(&data->gpdev->dev, VFIO_GROUP_NOTIFY,
			&data->group_notifier);

	FUNC4(data->gpdev);

	FUNC1(data);
}