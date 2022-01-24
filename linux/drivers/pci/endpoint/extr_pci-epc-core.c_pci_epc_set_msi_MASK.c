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
struct pci_epc {scalar_t__ max_functions; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_msi ) (struct pci_epc*,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pci_epc*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct pci_epc*,scalar_t__,scalar_t__) ; 

int FUNC5(struct pci_epc *epc, u8 func_no, u8 interrupts)
{
	int ret;
	u8 encode_int;
	unsigned long flags;

	if (FUNC0(epc) || func_no >= epc->max_functions ||
	    interrupts > 32)
		return -EINVAL;

	if (!epc->ops->set_msi)
		return 0;

	encode_int = FUNC1(interrupts);

	FUNC2(&epc->lock, flags);
	ret = epc->ops->set_msi(epc, func_no, encode_int);
	FUNC3(&epc->lock, flags);

	return ret;
}