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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_REBAR_CTRL ; 
 int PCI_REBAR_CTRL_BAR_SHIFT ; 
 int PCI_REBAR_CTRL_BAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 
 int FUNC1 (struct pci_dev*,int) ; 

int FUNC2(struct pci_dev *pdev, int bar)
{
	int pos;
	u32 ctrl;

	pos = FUNC1(pdev, bar);
	if (pos < 0)
		return pos;

	FUNC0(pdev, pos + PCI_REBAR_CTRL, &ctrl);
	return (ctrl & PCI_REBAR_CTRL_BAR_SIZE) >> PCI_REBAR_CTRL_BAR_SHIFT;
}