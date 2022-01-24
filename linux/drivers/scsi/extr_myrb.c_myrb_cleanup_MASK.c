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
struct pci_dev {int dummy; } ;
struct myrb_hba {int /*<<< orphan*/  host; scalar_t__ io_addr; scalar_t__ irq; scalar_t__ mmio_base; int /*<<< orphan*/  io_base; int /*<<< orphan*/  (* disable_intr ) (int /*<<< orphan*/ ) ;struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct myrb_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct myrb_hba *cb)
{
	struct pci_dev *pdev = cb->pdev;

	/* Free the memory mailbox, status, and related structures */
	FUNC2(cb);

	if (cb->mmio_base) {
		cb->disable_intr(cb->io_base);
		FUNC1(cb->mmio_base);
	}
	if (cb->irq)
		FUNC0(cb->irq, cb);
	if (cb->io_addr)
		FUNC5(cb->io_addr, 0x80);
	FUNC4(pdev, NULL);
	FUNC3(pdev);
	FUNC6(cb->host);
}