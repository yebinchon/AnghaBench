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
struct pci_dev {scalar_t__ shpc_managed; } ;
struct controller {TYPE_1__* hpc_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_ctlr ) (struct controller*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct controller*) ; 
 struct controller* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	struct controller *ctrl = FUNC1(dev);

	dev->shpc_managed = 0;
	FUNC2(ctrl);
	ctrl->hpc_ops->release_ctlr(ctrl);
	FUNC0(ctrl);
}