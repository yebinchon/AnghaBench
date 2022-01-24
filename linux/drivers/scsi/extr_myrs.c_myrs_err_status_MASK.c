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
struct myrs_hba {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static bool FUNC3(struct myrs_hba *cs, unsigned char status,
		unsigned char parm0, unsigned char parm1)
{
	struct pci_dev *pdev = cs->pdev;

	switch (status) {
	case 0x00:
		FUNC1(&pdev->dev,
			 "Physical Device %d:%d Not Responding\n",
			 parm1, parm0);
		break;
	case 0x08:
		FUNC2(&pdev->dev, "Spinning Up Drives\n");
		break;
	case 0x30:
		FUNC2(&pdev->dev, "Configuration Checksum Error\n");
		break;
	case 0x60:
		FUNC2(&pdev->dev, "Mirror Race Recovery Failed\n");
		break;
	case 0x70:
		FUNC2(&pdev->dev, "Mirror Race Recovery In Progress\n");
		break;
	case 0x90:
		FUNC2(&pdev->dev, "Physical Device %d:%d COD Mismatch\n",
			   parm1, parm0);
		break;
	case 0xA0:
		FUNC2(&pdev->dev, "Logical Drive Installation Aborted\n");
		break;
	case 0xB0:
		FUNC2(&pdev->dev, "Mirror Race On A Critical Logical Drive\n");
		break;
	case 0xD0:
		FUNC2(&pdev->dev, "New Controller Configuration Found\n");
		break;
	case 0xF0:
		FUNC0(&pdev->dev, "Fatal Memory Parity Error\n");
		return true;
	default:
		FUNC0(&pdev->dev, "Unknown Initialization Error %02X\n",
			status);
		return true;
	}
	return false;
}