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
struct pci_epc {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct pci_epc*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epc*) ; 

void FUNC4(struct pci_epc *epc)
{
	unsigned long flags;

	if (FUNC0(epc) || !epc->ops->stop)
		return;

	FUNC1(&epc->lock, flags);
	epc->ops->stop(epc);
	FUNC2(&epc->lock, flags);
}