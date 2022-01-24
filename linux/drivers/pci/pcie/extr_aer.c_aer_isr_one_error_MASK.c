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
struct aer_rpc {struct pci_dev* rpd; } ;
struct aer_err_source {int status; int /*<<< orphan*/  id; } ;
struct aer_err_info {int multi_error_valid; int /*<<< orphan*/  severity; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AER_CORRECTABLE ; 
 int /*<<< orphan*/  AER_FATAL ; 
 int /*<<< orphan*/  AER_NONFATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PCI_ERR_ROOT_COR_RCV ; 
 int PCI_ERR_ROOT_FATAL_RCV ; 
 int PCI_ERR_ROOT_MULTI_COR_RCV ; 
 int PCI_ERR_ROOT_MULTI_UNCOR_RCV ; 
 int PCI_ERR_ROOT_UNCOR_RCV ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct aer_err_info*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,struct aer_err_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct aer_err_source*) ; 

__attribute__((used)) static void FUNC6(struct aer_rpc *rpc,
		struct aer_err_source *e_src)
{
	struct pci_dev *pdev = rpc->rpd;
	struct aer_err_info e_info;

	FUNC5(pdev, e_src);

	/*
	 * There is a possibility that both correctable error and
	 * uncorrectable error being logged. Report correctable error first.
	 */
	if (e_src->status & PCI_ERR_ROOT_COR_RCV) {
		e_info.id = FUNC0(e_src->id);
		e_info.severity = AER_CORRECTABLE;

		if (e_src->status & PCI_ERR_ROOT_MULTI_COR_RCV)
			e_info.multi_error_valid = 1;
		else
			e_info.multi_error_valid = 0;
		FUNC2(pdev, &e_info);

		if (FUNC4(pdev, &e_info))
			FUNC3(&e_info);
	}

	if (e_src->status & PCI_ERR_ROOT_UNCOR_RCV) {
		e_info.id = FUNC1(e_src->id);

		if (e_src->status & PCI_ERR_ROOT_FATAL_RCV)
			e_info.severity = AER_FATAL;
		else
			e_info.severity = AER_NONFATAL;

		if (e_src->status & PCI_ERR_ROOT_MULTI_UNCOR_RCV)
			e_info.multi_error_valid = 1;
		else
			e_info.multi_error_valid = 0;

		FUNC2(pdev, &e_info);

		if (FUNC4(pdev, &e_info))
			FUNC3(&e_info);
	}
}