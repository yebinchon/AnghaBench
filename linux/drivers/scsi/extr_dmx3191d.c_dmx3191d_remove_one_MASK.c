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
struct NCR5380_hostdata {unsigned long base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX3191D_REGION_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 struct NCR5380_hostdata* FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC2(pdev);
	struct NCR5380_hostdata *hostdata = FUNC6(shost);
	unsigned long io = hostdata->base;

	FUNC5(shost);

	FUNC0(shost);
	FUNC4(shost);
	FUNC3(io, DMX3191D_REGION_LEN);
	FUNC1(pdev);
}