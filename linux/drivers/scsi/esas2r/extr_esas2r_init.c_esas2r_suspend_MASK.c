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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct esas2r_adapter {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct Scsi_Host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC7(struct pci_dev *pdev, pm_message_t state)
{
	struct Scsi_Host *host = FUNC4(pdev);
	u32 device_state;
	struct esas2r_adapter *a = (struct esas2r_adapter *)host->hostdata;

	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev), "suspending adapter()");
	if (!a)
		return -ENODEV;

	FUNC0(a, 1);
	device_state = FUNC2(pdev, state);
	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_save_state() called");
	FUNC5(pdev);
	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_disable_device() called");
	FUNC3(pdev);
	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev),
		       "pci_set_power_state() called");
	FUNC6(pdev, device_state);
	FUNC1(ESAS2R_LOG_INFO, &(pdev->dev), "esas2r_suspend(): 0");
	return 0;
}