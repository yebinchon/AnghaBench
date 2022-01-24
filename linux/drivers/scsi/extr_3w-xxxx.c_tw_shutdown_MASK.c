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
typedef  int /*<<< orphan*/  TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC1(pdev);
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

	FUNC0(tw_dev);
}