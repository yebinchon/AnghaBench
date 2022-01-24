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
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterCtlBlk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct Scsi_Host *scsi_host = FUNC3(dev);
	struct AdapterCtlBlk *acb = (struct AdapterCtlBlk *)(scsi_host->hostdata);

	FUNC1(DBG_0, "dc395x_remove_one: acb=%p\n", acb);

	FUNC5(scsi_host);
	FUNC0(acb);
	FUNC2(dev);
	FUNC4(scsi_host);
}