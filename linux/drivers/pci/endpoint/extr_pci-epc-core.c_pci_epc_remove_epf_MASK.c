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
struct pci_epf {int /*<<< orphan*/ * epc; int /*<<< orphan*/  list; } ;
struct pci_epc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct pci_epc *epc, struct pci_epf *epf)
{
	unsigned long flags;

	if (!epc || FUNC0(epc) || !epf)
		return;

	FUNC2(&epc->lock, flags);
	FUNC1(&epf->list);
	epf->epc = NULL;
	FUNC3(&epc->lock, flags);
}