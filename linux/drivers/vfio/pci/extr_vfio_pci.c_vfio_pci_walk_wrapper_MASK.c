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
struct vfio_pci_walk_info {int ret; int (* fn ) (struct pci_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; TYPE_1__* pdev; int /*<<< orphan*/  slot; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  slot; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev, void *data)
{
	struct vfio_pci_walk_info *walk = data;

	if (!walk->slot || FUNC1(pdev, walk->pdev->slot))
		walk->ret = walk->fn(pdev, walk->data);

	return walk->ret;
}