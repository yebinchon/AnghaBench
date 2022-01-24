#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fhci_hcd {int /*<<< orphan*/  dfs_root; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct fhci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  fhci_dfs_irq_stat_fops ; 
 int /*<<< orphan*/  fhci_dfs_regs_fops ; 
 TYPE_2__* FUNC3 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  usb_debug_root ; 

void FUNC4(struct fhci_hcd *fhci)
{
	struct device *dev = FUNC3(fhci)->self.controller;

	fhci->dfs_root = FUNC0(FUNC2(dev), usb_debug_root);

	FUNC1("regs", S_IFREG | S_IRUGO, fhci->dfs_root, fhci,
			    &fhci_dfs_regs_fops);
	FUNC1("irq_stat", S_IFREG | S_IRUGO, fhci->dfs_root, fhci,
			    &fhci_dfs_irq_stat_fops);
}