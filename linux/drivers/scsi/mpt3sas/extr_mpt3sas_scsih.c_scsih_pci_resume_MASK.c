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
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct MPT3SAS_ADAPTER* FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC5(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC2(pdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC4(shost);

	FUNC0(ioc, "PCI error: resume callback!!\n");

	FUNC1(ioc);
	FUNC3(ioc->shost);
}