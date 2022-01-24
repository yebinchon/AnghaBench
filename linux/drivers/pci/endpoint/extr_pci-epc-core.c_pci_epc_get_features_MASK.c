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
typedef  scalar_t__ u8 ;
struct pci_epc_features {int dummy; } ;
struct pci_epc {scalar_t__ max_functions; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {struct pci_epc_features* (* get_features ) (struct pci_epc*,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pci_epc_features* FUNC3 (struct pci_epc*,scalar_t__) ; 

const struct pci_epc_features *FUNC4(struct pci_epc *epc,
						    u8 func_no)
{
	const struct pci_epc_features *epc_features;
	unsigned long flags;

	if (FUNC0(epc) || func_no >= epc->max_functions)
		return NULL;

	if (!epc->ops->get_features)
		return NULL;

	FUNC1(&epc->lock, flags);
	epc_features = epc->ops->get_features(epc, func_no);
	FUNC2(&epc->lock, flags);

	return epc_features;
}