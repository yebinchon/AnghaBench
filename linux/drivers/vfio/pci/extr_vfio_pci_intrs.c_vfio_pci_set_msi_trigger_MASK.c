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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct vfio_pci_device {unsigned int irq_type; unsigned int num_ctx; TYPE_1__* ctx; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int EINVAL ; 
 int VFIO_IRQ_SET_DATA_BOOL ; 
 int VFIO_IRQ_SET_DATA_EVENTFD ; 
 int VFIO_IRQ_SET_DATA_NONE ; 
 unsigned int VFIO_PCI_MSIX_IRQ_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct vfio_pci_device*,unsigned int) ; 
 scalar_t__ FUNC2 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_pci_device*,int) ; 
 int FUNC4 (struct vfio_pci_device*,unsigned int,int) ; 
 int FUNC5 (struct vfio_pci_device*,unsigned int,unsigned int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct vfio_pci_device *vdev,
				    unsigned index, unsigned start,
				    unsigned count, uint32_t flags, void *data)
{
	int i;
	bool msix = (index == VFIO_PCI_MSIX_IRQ_INDEX) ? true : false;

	if (FUNC1(vdev, index) && !count && (flags & VFIO_IRQ_SET_DATA_NONE)) {
		FUNC3(vdev, msix);
		return 0;
	}

	if (!(FUNC1(vdev, index) || FUNC2(vdev)))
		return -EINVAL;

	if (flags & VFIO_IRQ_SET_DATA_EVENTFD) {
		int32_t *fds = data;
		int ret;

		if (vdev->irq_type == index)
			return FUNC5(vdev, start, count,
						  fds, msix);

		ret = FUNC4(vdev, start + count, msix);
		if (ret)
			return ret;

		ret = FUNC5(vdev, start, count, fds, msix);
		if (ret)
			FUNC3(vdev, msix);

		return ret;
	}

	if (!FUNC1(vdev, index) || start + count > vdev->num_ctx)
		return -EINVAL;

	for (i = start; i < start + count; i++) {
		if (!vdev->ctx[i].trigger)
			continue;
		if (flags & VFIO_IRQ_SET_DATA_NONE) {
			FUNC0(vdev->ctx[i].trigger, 1);
		} else if (flags & VFIO_IRQ_SET_DATA_BOOL) {
			uint8_t *bools = data;
			if (bools[i - start])
				FUNC0(vdev->ctx[i].trigger, 1);
		}
	}
	return 0;
}