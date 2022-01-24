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
struct vmd_irq_list {scalar_t__ count; } ;
struct vmd_dev {int msix_count; struct vmd_irq_list* irqs; } ;
struct msi_desc {int dummy; } ;
struct TYPE_2__ {int class; } ;

/* Variables and functions */
#define  PCI_CLASS_STORAGE_EXPRESS 128 
 int /*<<< orphan*/  list_lock ; 
 TYPE_1__* FUNC0 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct vmd_irq_list *FUNC3(struct vmd_dev *vmd, struct msi_desc *desc)
{
	int i, best = 1;
	unsigned long flags;

	if (vmd->msix_count == 1)
		return &vmd->irqs[0];

	/*
	 * White list for fast-interrupt handlers. All others will share the
	 * "slow" interrupt vector.
	 */
	switch (FUNC0(desc)->class) {
	case PCI_CLASS_STORAGE_EXPRESS:
		break;
	default:
		return &vmd->irqs[0];
	}

	FUNC1(&list_lock, flags);
	for (i = 1; i < vmd->msix_count; i++)
		if (vmd->irqs[i].count < vmd->irqs[best].count)
			best = i;
	vmd->irqs[best].count++;
	FUNC2(&list_lock, flags);

	return &vmd->irqs[best];
}