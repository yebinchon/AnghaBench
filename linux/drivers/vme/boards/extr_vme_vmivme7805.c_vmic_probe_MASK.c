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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BM_VME_CONTROL_ABLE ; 
 int BM_VME_CONTROL_BERRI ; 
 int BM_VME_CONTROL_BERRST ; 
 int BM_VME_CONTROL_BPENA ; 
 int BM_VME_CONTROL_MASTER_ENDIAN ; 
 int BM_VME_CONTROL_SLAVE_ENDIAN ; 
 int BM_VME_CONTROL_VBENA ; 
 int EIO ; 
 scalar_t__ VME_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  driver_name ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ vmic_base ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int retval;
	u32 data;

	/* Enable the device */
	retval = FUNC5(pdev);
	if (retval) {
		FUNC0(&pdev->dev, "Unable to enable device\n");
		goto err;
	}

	/* Map Registers */
	retval = FUNC7(pdev, driver_name);
	if (retval) {
		FUNC0(&pdev->dev, "Unable to reserve resources\n");
		goto err_resource;
	}

	/* Map registers in BAR 0 */
	vmic_base = FUNC2(FUNC8(pdev, 0), 16);
	if (!vmic_base) {
		FUNC0(&pdev->dev, "Unable to remap CRG region\n");
		retval = -EIO;
		goto err_remap;
	}

	/* Clear the FPGA VME IF contents */
	FUNC3(0, vmic_base + VME_CONTROL);

	/* Clear any initial BERR  */
	data = FUNC1(vmic_base + VME_CONTROL) & 0x00000FFF;
	data |= BM_VME_CONTROL_BERRST;
	FUNC3(data, vmic_base + VME_CONTROL);

	/* Enable the vme interface and byte swapping */
	data = FUNC1(vmic_base + VME_CONTROL) & 0x00000FFF;
	data = data | BM_VME_CONTROL_MASTER_ENDIAN |
			BM_VME_CONTROL_SLAVE_ENDIAN |
			BM_VME_CONTROL_ABLE |
			BM_VME_CONTROL_BERRI |
			BM_VME_CONTROL_BPENA |
			BM_VME_CONTROL_VBENA;
	FUNC3(data, vmic_base + VME_CONTROL);

	return 0;

err_remap:
	FUNC6(pdev);
err_resource:
	FUNC4(pdev);
err:
	return retval;
}