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
struct vfio_pci_walk_info {int (* fn ) (struct pci_dev*,void*) ;void* data; int slot; int ret; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vfio_pci_walk_info*) ; 
 int /*<<< orphan*/  vfio_pci_walk_wrapper ; 

__attribute__((used)) static int FUNC1(struct pci_dev *pdev,
					 int (*fn)(struct pci_dev *,
						   void *data), void *data,
					 bool slot)
{
	struct vfio_pci_walk_info walk = {
		.fn = fn, .data = data, .pdev = pdev, .slot = slot, .ret = 0,
	};

	FUNC0(pdev->bus, vfio_pci_walk_wrapper, &walk);

	return walk.ret;
}