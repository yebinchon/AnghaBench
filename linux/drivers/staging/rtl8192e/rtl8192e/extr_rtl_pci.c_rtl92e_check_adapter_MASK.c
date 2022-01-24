#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct r8192_priv {scalar_t__ card_8192; TYPE_1__* ops; } ;
struct pci_dev {int device; int revision; int /*<<< orphan*/  dev; int /*<<< orphan*/  vendor; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ nic_type; } ;

/* Variables and functions */
#define  HAL_HW_PCI_REVISION_ID_8192PCIE 129 
#define  HAL_HW_PCI_REVISION_ID_8192SE 128 
 scalar_t__ NIC_8192E ; 
 scalar_t__ NIC_8192SE ; 
 scalar_t__ NIC_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

bool FUNC4(struct pci_dev *pdev, struct net_device *dev)
{
	struct r8192_priv *priv = (struct r8192_priv *)FUNC3(dev);
	u16 DeviceID;
	u8  RevisionID;
	u16 IrqLine;

	DeviceID = pdev->device;
	RevisionID = pdev->revision;
	FUNC2(pdev, 0x3C, &IrqLine);

	priv->card_8192 = priv->ops->nic_type;

	if (DeviceID == 0x8192) {
		switch (RevisionID) {
		case HAL_HW_PCI_REVISION_ID_8192PCIE:
			FUNC1(&pdev->dev,
				 "Adapter(8192 PCI-E) is found - DeviceID=%x\n",
				 DeviceID);
			priv->card_8192 = NIC_8192E;
			break;
		case HAL_HW_PCI_REVISION_ID_8192SE:
			FUNC1(&pdev->dev,
				 "Adapter(8192SE) is found - DeviceID=%x\n",
				 DeviceID);
			priv->card_8192 = NIC_8192SE;
			break;
		default:
			FUNC1(&pdev->dev,
				 "UNKNOWN nic type(%4x:%4x)\n",
				 pdev->vendor, pdev->device);
			priv->card_8192 = NIC_UNKNOWN;
			return false;
		}
	}

	if (priv->ops->nic_type != priv->card_8192) {
		FUNC1(&pdev->dev,
			 "Detect info(%x) and hardware info(%x) not match!\n",
			 priv->ops->nic_type, priv->card_8192);
		FUNC1(&pdev->dev,
			 "Please select proper driver before install!!!!\n");
		return false;
	}

	FUNC0(pdev, dev);

	return true;
}