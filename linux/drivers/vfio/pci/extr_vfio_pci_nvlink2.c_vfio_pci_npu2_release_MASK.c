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
struct vfio_pci_region {struct vfio_pci_npu2_data* data; } ;
struct vfio_pci_npu2_data {int /*<<< orphan*/  base; } ;
struct vfio_pci_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfio_pci_npu2_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vfio_pci_device *vdev,
		struct vfio_pci_region *region)
{
	struct vfio_pci_npu2_data *data = region->data;

	FUNC1(data->base);
	FUNC0(data);
}