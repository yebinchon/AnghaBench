#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tw_device_extension_count ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int twe_major ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC2(pdev);
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

	FUNC5(tw_dev->host);

	/* Unregister character device */
	if (twe_major >= 0) {
		FUNC7(twe_major, "twe");
		twe_major = -1;
	}

	/* Shutdown the card */
	FUNC0(tw_dev);

	/* Free up the mem region */
	FUNC3(pdev);

	/* Free up device extension resources */
	FUNC6(tw_dev);

	FUNC4(tw_dev->host);
	FUNC1(pdev);
	tw_device_extension_count--;
}