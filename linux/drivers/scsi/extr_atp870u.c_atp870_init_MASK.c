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
typedef  int u8 ;
struct pci_dev {scalar_t__ device; int revision; int /*<<< orphan*/  dev; } ;
struct atp_unit {unsigned char* host_id; int* global_map; int* ultra_map; scalar_t__* pciport; int /*<<< orphan*/ * ioport; struct pci_dev* pdev; } ;
struct Scsi_Host {int max_id; unsigned char this_id; int /*<<< orphan*/  io_port; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7610 ; 
 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7612SUW ; 
 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7612UW ; 
 int /*<<< orphan*/  FUNC0 (struct atp_unit*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct atp_unit*,int) ; 
 int FUNC2 (struct atp_unit*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct atp_unit*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atp_unit*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct atp_unit*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int,unsigned char*) ; 
 struct atp_unit* FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*,int,int) ; 

__attribute__((used)) static void FUNC11(struct Scsi_Host *shpnt)
{
	struct atp_unit *atpdev = FUNC9(shpnt);
	struct pci_dev *pdev = atpdev->pdev;
	unsigned char k, host_id;
	u8 scam_on;
	bool wide_chip =
		(pdev->device == PCI_DEVICE_ID_ARTOP_AEC7610 &&
		 pdev->revision == 4) ||
		(pdev->device == PCI_DEVICE_ID_ARTOP_AEC7612UW) ||
		(pdev->device == PCI_DEVICE_ID_ARTOP_AEC7612SUW);

	FUNC8(pdev, 0x49, &host_id);

	FUNC6(&pdev->dev, "ACARD AEC-671X PCI Ultra/W SCSI-2/3 Host Adapter: IO:%lx, IRQ:%d.\n",
		 shpnt->io_port, shpnt->irq);

	atpdev->ioport[0] = shpnt->io_port;
	atpdev->pciport[0] = shpnt->io_port + 0x20;
	host_id &= 0x07;
	atpdev->host_id[0] = host_id;
	scam_on = FUNC2(atpdev, 0, 2);
	atpdev->global_map[0] = FUNC1(atpdev, 0x2d);
	atpdev->ultra_map[0] = FUNC3(atpdev, 0x2e);

	if (atpdev->ultra_map[0] == 0) {
		scam_on = 0x00;
		atpdev->global_map[0] = 0x20;
		atpdev->ultra_map[0] = 0xffff;
	}

	if (pdev->revision > 0x07)	/* check if atp876 chip */
		FUNC5(atpdev, 0x3e, 0x00); /* enable terminator */

	k = (FUNC1(atpdev, 0x3a) & 0xf3) | 0x10;
	FUNC5(atpdev, 0x3a, k);
	FUNC5(atpdev, 0x3a, k & 0xdf);
	FUNC7(32);
	FUNC5(atpdev, 0x3a, k);
	FUNC7(32);
	FUNC4(atpdev, 0, host_id);

	FUNC10(shpnt, wide_chip, scam_on);
	FUNC5(atpdev, 0x3a, FUNC1(atpdev, 0x3a) | 0x10);
	FUNC0(atpdev, 0, wide_chip, 0);
	FUNC5(atpdev, 0x3a, FUNC1(atpdev, 0x3a) & 0xef);
	FUNC5(atpdev, 0x3b, FUNC1(atpdev, 0x3b) | 0x20);
	shpnt->max_id = wide_chip ? 16 : 8;
	shpnt->this_id = host_id;
}