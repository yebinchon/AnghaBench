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
struct vfio_pci_group_info {int count; TYPE_1__* groups; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct iommu_group {int dummy; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 struct iommu_group* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_group*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, void *data)
{
	struct vfio_pci_group_info *info = data;
	struct iommu_group *group;
	int id, i;

	group = FUNC0(&pdev->dev);
	if (!group)
		return -EPERM;

	id = FUNC1(group);

	for (i = 0; i < info->count; i++)
		if (info->groups[i].id == id)
			break;

	FUNC2(group);

	return (i == info->count) ? -EINVAL : 0;
}