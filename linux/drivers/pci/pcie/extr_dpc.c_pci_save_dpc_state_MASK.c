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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;
struct dpc_dev {scalar_t__ cap_pos; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_DPC_CTL ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DPC ; 
 struct pci_cap_saved_state* FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct dpc_dev* FUNC3 (struct pci_dev*) ; 

void FUNC4(struct pci_dev *dev)
{
	struct dpc_dev *dpc;
	struct pci_cap_saved_state *save_state;
	u16 *cap;

	if (!FUNC1(dev))
		return;

	dpc = FUNC3(dev);
	if (!dpc)
		return;

	save_state = FUNC0(dev, PCI_EXT_CAP_ID_DPC);
	if (!save_state)
		return;

	cap = (u16 *)&save_state->cap.data[0];
	FUNC2(dev, dpc->cap_pos + PCI_EXP_DPC_CTL, cap);
}