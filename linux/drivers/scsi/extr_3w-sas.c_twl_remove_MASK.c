#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; scalar_t__ hostdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  host; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  flags; int /*<<< orphan*/  online; } ;
typedef  TYPE_2__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  TW_USING_MSI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  twl_device_extension_count ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int twl_major ; 
 int /*<<< orphan*/  twl_sysfs_aen_read_attr ; 
 int /*<<< orphan*/  twl_sysfs_compat_info_attr ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct Scsi_Host *host = FUNC4(pdev);
	TW_Device_Extension *tw_dev;

	if (!host)
		return;

	tw_dev = (TW_Device_Extension *)host->hostdata;

	if (!tw_dev->online)
		return;

	/* Remove sysfs binary files */
	FUNC8(&host->shost_dev.kobj, &twl_sysfs_aen_read_attr);
	FUNC8(&host->shost_dev.kobj, &twl_sysfs_compat_info_attr);

	FUNC7(tw_dev->host);

	/* Unregister character device */
	if (twl_major >= 0) {
		FUNC11(twl_major, "twl");
		twl_major = -1;
	}

	/* Shutdown the card */
	FUNC0(tw_dev);

	/* Disable MSI if enabled */
	if (FUNC9(TW_USING_MSI, &tw_dev->flags))
		FUNC3(pdev);

	/* Free IO remapping */
	FUNC1(tw_dev->base_addr);

	/* Free up the mem region */
	FUNC5(pdev);

	/* Free up device extension resources */
	FUNC10(tw_dev);

	FUNC6(tw_dev->host);
	FUNC2(pdev);
	twl_device_extension_count--;
}