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
struct pci_epf {int func_no; int /*<<< orphan*/  list; struct pci_epc* epc; } ;
struct pci_epc {int max_functions; int /*<<< orphan*/  lock; int /*<<< orphan*/  pci_epf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct pci_epc *epc, struct pci_epf *epf)
{
	unsigned long flags;

	if (epf->epc)
		return -EBUSY;

	if (FUNC0(epc))
		return -EINVAL;

	if (epf->func_no > epc->max_functions - 1)
		return -EINVAL;

	epf->epc = epc;

	FUNC2(&epc->lock, flags);
	FUNC1(&epf->list, &epc->pci_epf);
	FUNC3(&epc->lock, flags);

	return 0;
}