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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct sym_hcb {TYPE_1__ s; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sym_hcb*,struct pci_dev*,int) ; 
 struct sym_hcb* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct Scsi_Host *shost, struct pci_dev *pdev)
{
	struct sym_hcb *np = FUNC6(shost);
	FUNC3("%s: detaching ...\n", FUNC7(np));

	FUNC2(&np->s.timer);

	/*
	 * Reset NCR chip.
	 * We should use sym_soft_reset(), but we don't want to do 
	 * so, since we may not be safe if interrupts occur.
	 */
	FUNC3("%s: resetting chip\n", FUNC7(np));
	FUNC1(np, nc_istat, SRST);
	FUNC0(np, nc_mbox1);
	FUNC8(10);
	FUNC1(np, nc_istat, 0);

	FUNC5(np, pdev, 1);
	FUNC4(shost);

	return 1;
}