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
struct myrs_hba {int /*<<< orphan*/  host; scalar_t__ mmio_base; scalar_t__ io_addr; scalar_t__ irq; int /*<<< orphan*/  (* disable_intr ) (struct myrs_hba*) ;struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct myrs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct myrs_hba*) ; 

__attribute__((used)) static void FUNC8(struct myrs_hba *cs)
{
	struct pci_dev *pdev = cs->pdev;

	/* Free the memory mailbox, status, and related structures */
	FUNC2(cs);

	if (cs->mmio_base) {
		cs->disable_intr(cs);
		FUNC1(cs->mmio_base);
	}
	if (cs->irq)
		FUNC0(cs->irq, cs);
	if (cs->io_addr)
		FUNC5(cs->io_addr, 0x80);
	FUNC1(cs->mmio_base);
	FUNC4(pdev, NULL);
	FUNC3(pdev);
	FUNC6(cs->host);
}