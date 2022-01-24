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
struct TYPE_4__ {int /*<<< orphan*/  host; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  TW_USING_MSI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  twa_device_extension_count ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int twa_major ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC4(pdev);
	TW_Device_Extension *tw_dev = (TW_Device_Extension *)host->hostdata;

	FUNC7(tw_dev->host);

	/* Unregister character device */
	if (twa_major >= 0) {
		FUNC10(twa_major, "twa");
		twa_major = -1;
	}

	/* Shutdown the card */
	FUNC0(tw_dev);

	/* Disable MSI if enabled */
	if (FUNC8(TW_USING_MSI, &tw_dev->flags))
		FUNC3(pdev);

	/* Free IO remapping */
	FUNC1(tw_dev->base_addr);

	/* Free up the mem region */
	FUNC5(pdev);

	/* Free up device extension resources */
	FUNC9(tw_dev);

	FUNC6(tw_dev->host);
	FUNC2(pdev);
	twa_device_extension_count--;
}