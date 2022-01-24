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
struct atp_unit {struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct atp_unit* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC7 (struct pci_dev *pdev)
{	
	struct atp_unit *devext = FUNC3(pdev);
	struct Scsi_Host *pshost = devext->host;
	
	
	FUNC6(pshost);
	FUNC1(pshost->irq, pshost);
	FUNC4(pdev);
	FUNC2(pdev);
	FUNC0(pshost);
	FUNC5(pshost);
}