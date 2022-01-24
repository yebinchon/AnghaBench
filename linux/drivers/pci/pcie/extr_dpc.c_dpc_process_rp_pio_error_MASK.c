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
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; int rp_log_size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct pci_dev* port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int PCI_EXP_DPC_RP_PIO_EXCEPTION ; 
 int PCI_EXP_DPC_RP_PIO_HEADER_LOG ; 
 int PCI_EXP_DPC_RP_PIO_IMPSPEC_LOG ; 
 int PCI_EXP_DPC_RP_PIO_MASK ; 
 int PCI_EXP_DPC_RP_PIO_SEVERITY ; 
 int PCI_EXP_DPC_RP_PIO_STATUS ; 
 int PCI_EXP_DPC_RP_PIO_SYSERROR ; 
 int PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG ; 
 int PCI_EXP_DPC_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/ * rp_pio_error_string ; 

__attribute__((used)) static void FUNC5(struct dpc_dev *dpc)
{
	struct pci_dev *pdev = dpc->dev->port;
	u16 cap = dpc->cap_pos, dpc_status, first_error;
	u32 status, mask, sev, syserr, exc, dw0, dw1, dw2, dw3, log, prefix;
	int i;

	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_STATUS, &status);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_MASK, &mask);
	FUNC1(pdev, "rp_pio_status: %#010x, rp_pio_mask: %#010x\n",
		status, mask);

	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_SEVERITY, &sev);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_SYSERROR, &syserr);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_EXCEPTION, &exc);
	FUNC1(pdev, "RP PIO severity=%#010x, syserror=%#010x, exception=%#010x\n",
		sev, syserr, exc);

	/* Get First Error Pointer */
	FUNC3(pdev, cap + PCI_EXP_DPC_STATUS, &dpc_status);
	first_error = (dpc_status & 0x1f00) >> 8;

	for (i = 0; i < FUNC0(rp_pio_error_string); i++) {
		if ((status & ~mask) & (1 << i))
			FUNC1(pdev, "[%2d] %s%s\n", i, rp_pio_error_string[i],
				first_error == i ? " (First)" : "");
	}

	if (dpc->rp_log_size < 4)
		goto clear_status;
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG,
			      &dw0);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG + 4,
			      &dw1);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG + 8,
			      &dw2);
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_HEADER_LOG + 12,
			      &dw3);
	FUNC1(pdev, "TLP Header: %#010x %#010x %#010x %#010x\n",
		dw0, dw1, dw2, dw3);

	if (dpc->rp_log_size < 5)
		goto clear_status;
	FUNC2(pdev, cap + PCI_EXP_DPC_RP_PIO_IMPSPEC_LOG, &log);
	FUNC1(pdev, "RP PIO ImpSpec Log %#010x\n", log);

	for (i = 0; i < dpc->rp_log_size - 5; i++) {
		FUNC2(pdev,
			cap + PCI_EXP_DPC_RP_PIO_TLPPREFIX_LOG, &prefix);
		FUNC1(pdev, "TLP Prefix Header: dw%d, %#010x\n", i, prefix);
	}
 clear_status:
	FUNC4(pdev, cap + PCI_EXP_DPC_RP_PIO_STATUS, status);
}