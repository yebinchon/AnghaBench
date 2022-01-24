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
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 struct Scsi_Host* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static pci_ers_result_t FUNC2(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC0(pdev);

	FUNC1(shost);

	/* Request a slot reset. */
	return PCI_ERS_RESULT_NEED_RESET;
}