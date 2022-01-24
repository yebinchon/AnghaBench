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
struct TYPE_2__ {scalar_t__ ramaddr; scalar_t__ ioaddr; int /*<<< orphan*/  host; } ;
struct sym_hcb {TYPE_1__ s; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*,int,char*) ; 

__attribute__((used)) static void FUNC4(struct sym_hcb *np, struct pci_dev *pdev,
		int do_free_irq)
{
	/*
	 *  Free O/S specific resources.
	 */
	if (do_free_irq)
		FUNC0(pdev->irq, np->s.host);
	if (np->s.ioaddr)
		FUNC1(pdev, np->s.ioaddr);
	if (np->s.ramaddr)
		FUNC1(pdev, np->s.ramaddr);
	/*
	 *  Free O/S independent resources.
	 */
	FUNC2(np);

	FUNC3(np, sizeof(*np), "HCB");
}