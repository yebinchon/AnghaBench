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
struct pvscsi_adapter {int dummy; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 struct pvscsi_adapter* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC2(pdev);
	struct pvscsi_adapter *adapter = FUNC6(host);

	FUNC5(host);

	FUNC0(adapter);
	FUNC3(adapter);

	FUNC4(host);

	FUNC1(pdev);
}