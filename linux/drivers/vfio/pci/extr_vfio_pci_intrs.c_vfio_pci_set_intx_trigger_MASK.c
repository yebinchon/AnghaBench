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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct vfio_pci_device {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int VFIO_IRQ_SET_DATA_BOOL ; 
 int VFIO_IRQ_SET_DATA_EVENTFD ; 
 int VFIO_IRQ_SET_DATA_NONE ; 
 scalar_t__ FUNC0 (struct vfio_pci_device*) ; 
 scalar_t__ FUNC1 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_pci_device*) ; 
 int FUNC3 (struct vfio_pci_device*) ; 
 int FUNC4 (struct vfio_pci_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_pci_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vfio_pci_device *vdev,
				     unsigned index, unsigned start,
				     unsigned count, uint32_t flags, void *data)
{
	if (FUNC0(vdev) && !count && (flags & VFIO_IRQ_SET_DATA_NONE)) {
		FUNC2(vdev);
		return 0;
	}

	if (!(FUNC0(vdev) || FUNC1(vdev)) || start != 0 || count != 1)
		return -EINVAL;

	if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
		int32_t fd = *(int32_t *)data;
		int ret;

		if (FUNC0(vdev))
			return FUNC4(vdev, fd);

		ret = FUNC3(vdev);
		if (ret)
			return ret;

		ret = FUNC4(vdev, fd);
		if (ret)
			FUNC2(vdev);

		return ret;
	}

	if (!FUNC0(vdev))
		return -EINVAL;

	if (flags & VFIO_IRQ_SET_DATA_NONE) {
		FUNC5(vdev, NULL);
	} else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
		uint8_t trigger = *(uint8_t *)data;
		if (trigger)
			FUNC5(vdev, NULL);
	}
	return 0;
}