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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atp_unit {int* global_map; int** sp; unsigned int* ultra_map; unsigned int* async; unsigned char* host_id; scalar_t__* pciport; scalar_t__* ioport; struct pci_dev* pdev; } ;
struct Scsi_Host {int max_id; int max_lun; int max_channel; unsigned char this_id; int /*<<< orphan*/  io_port; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atp_unit*,int,int,int) ; 
 int FUNC1 (struct atp_unit*,int) ; 
 int FUNC2 (struct atp_unit*,int,int) ; 
 int FUNC3 (struct atp_unit*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atp_unit*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct atp_unit*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (struct atp_unit*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct atp_unit*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct atp_unit*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct atp_unit* FUNC11 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC12(struct Scsi_Host *shpnt)
{
	struct atp_unit *atpdev = FUNC11(shpnt);
	struct pci_dev *pdev = atpdev->pdev;
	unsigned char k, m, c;
	unsigned int n;
	unsigned char setupdata[2][16];

	FUNC9(&pdev->dev, "ACARD AEC-67162 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\n",
		 shpnt->io_port, shpnt->irq);

	atpdev->ioport[0] = shpnt->io_port + 0x80;
	atpdev->ioport[1] = shpnt->io_port + 0xc0;
	atpdev->pciport[0] = shpnt->io_port + 0x40;
	atpdev->pciport[1] = shpnt->io_port + 0x50;

	c = FUNC1(atpdev, 0x29);
	FUNC5(atpdev, 0x29, c | 0x04);

	n = 0x1f80;
	while (n < 0x2000) {
		FUNC8(atpdev, 0x3c, n);
		if (FUNC3(atpdev, 0x38) == 0xffffffff)
			break;
		for (m = 0; m < 2; m++) {
			atpdev->global_map[m] = 0;
			for (k = 0; k < 4; k++) {
				FUNC8(atpdev, 0x3c, n++);
				((u32 *)&setupdata[m][0])[k] = FUNC3(atpdev, 0x38);
			}
			for (k = 0; k < 4; k++) {
				FUNC8(atpdev, 0x3c, n++);
				((u32 *)&atpdev->sp[m][0])[k] = FUNC3(atpdev, 0x38);
			}
			n += 8;
		}
	}
	c = FUNC1(atpdev, 0x29);
	FUNC5(atpdev, 0x29, c & 0xfb);
	for (c = 0; c < 2; c++) {
		atpdev->ultra_map[c] = 0;
		atpdev->async[c] = 0;
		for (k = 0; k < 16; k++) {
			n = 1 << k;
			if (atpdev->sp[c][k] > 1)
				atpdev->ultra_map[c] |= n;
			else
				if (atpdev->sp[c][k] == 0)
					atpdev->async[c] |= n;
		}
		atpdev->async[c] = ~(atpdev->async[c]);

		if (atpdev->global_map[c] == 0) {
			k = setupdata[c][1];
			if ((k & 0x40) != 0)
				atpdev->global_map[c] |= 0x20;
			k &= 0x07;
			atpdev->global_map[c] |= k;
			if ((setupdata[c][2] & 0x04) != 0)
				atpdev->global_map[c] |= 0x08;
			atpdev->host_id[c] = setupdata[c][0] & 0x07;
		}
	}

	k = FUNC1(atpdev, 0x28) & 0x8f;
	k |= 0x10;
	FUNC5(atpdev, 0x28, k);
	FUNC7(atpdev, 0, 1, 0x80);
	FUNC7(atpdev, 1, 1, 0x80);
	FUNC10(100);
	FUNC7(atpdev, 0, 1, 0);
	FUNC7(atpdev, 1, 1, 0);
	FUNC10(1000);
	FUNC2(atpdev, 0, 0x1b);
	FUNC2(atpdev, 0, 0x17);
	FUNC2(atpdev, 1, 0x1b);
	FUNC2(atpdev, 1, 0x17);

	k = atpdev->host_id[0];
	if (k > 7)
		k = (k & 0x07) | 0x40;
	FUNC4(atpdev, 0, k);

	k = atpdev->host_id[1];
	if (k > 7)
		k = (k & 0x07) | 0x40;
	FUNC4(atpdev, 1, k);

	FUNC10(600); /* this delay used to be called tscam_885() */
	FUNC9(&pdev->dev, "Scanning Channel A SCSI Device ...\n");
	FUNC0(atpdev, 0, true, FUNC2(atpdev, 0, 0x1b) >> 7);
	FUNC6(atpdev, 0, 0x16, 0x80);
	FUNC9(&pdev->dev, "Scanning Channel B SCSI Device ...\n");
	FUNC0(atpdev, 1, true, FUNC2(atpdev, 1, 0x1b) >> 7);
	FUNC6(atpdev, 1, 0x16, 0x80);
	k = FUNC1(atpdev, 0x28) & 0xcf;
	k |= 0xc0;
	FUNC5(atpdev, 0x28, k);
	k = FUNC1(atpdev, 0x1f) | 0x80;
	FUNC5(atpdev, 0x1f, k);
	k = FUNC1(atpdev, 0x29) | 0x01;
	FUNC5(atpdev, 0x29, k);
	shpnt->max_id = 16;
	shpnt->max_lun = (atpdev->global_map[0] & 0x07) + 1;
	shpnt->max_channel = 1;
	shpnt->this_id = atpdev->host_id[0];
}