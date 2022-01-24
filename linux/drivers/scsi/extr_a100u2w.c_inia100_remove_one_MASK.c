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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct orc_scb {int dummy; } ;
struct orc_host {int /*<<< orphan*/  scb_phys; int /*<<< orphan*/  scb_virt; int /*<<< orphan*/  escb_phys; int /*<<< orphan*/  escb_virt; } ;
struct orc_extended_scb {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  io_port; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;

/* Variables and functions */
 int ORC_MAXQUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC2(pdev);
	struct orc_host *host = (struct orc_host *)shost->hostdata;

	FUNC5(shost);

        FUNC1(shost->irq, shost);
	FUNC0(&pdev->dev,
			ORC_MAXQUEUE * sizeof(struct orc_extended_scb),
			host->escb_virt, host->escb_phys);
	FUNC0(&pdev->dev,
			ORC_MAXQUEUE * sizeof(struct orc_scb),
			host->scb_virt, host->scb_phys);
        FUNC3(shost->io_port, 256);

	FUNC4(shost);
}