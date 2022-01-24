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
struct scsi_qla_host {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NONE ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*) ; 
 struct scsi_qla_host* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t
FUNC2(struct pci_dev *pdev)
{
	struct scsi_qla_host *ha = FUNC1(pdev);

	if (!FUNC0(ha))
		return PCI_ERS_RESULT_NONE;

	return PCI_ERS_RESULT_RECOVERED;
}