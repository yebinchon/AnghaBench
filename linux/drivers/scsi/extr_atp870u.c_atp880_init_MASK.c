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
struct atp_unit {unsigned char* host_id; int* global_map; unsigned int* ultra_map; int** sp; unsigned int* async; scalar_t__* pciport; scalar_t__* ioport; struct pci_dev* pdev; } ;
struct Scsi_Host {int max_id; unsigned char this_id; int /*<<< orphan*/  irq; int /*<<< orphan*/  io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct atp_unit*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct atp_unit*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atp_unit*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct atp_unit*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atp_unit*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct atp_unit*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct atp_unit*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 struct atp_unit* FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*,int,int) ; 

__attribute__((used)) static void FUNC12(struct Scsi_Host *shpnt)
{
	struct atp_unit *atpdev = FUNC10(shpnt);
	struct pci_dev *pdev = atpdev->pdev;
	unsigned char k, m, host_id;
	unsigned int n;

	FUNC9(pdev, PCI_LATENCY_TIMER, 0x80);

	atpdev->ioport[0] = shpnt->io_port + 0x40;
	atpdev->pciport[0] = shpnt->io_port + 0x28;

	host_id = FUNC1(atpdev, 0x39) >> 4;

	FUNC7(&pdev->dev, "ACARD AEC-67160 PCI Ultra3 LVD Host Adapter: IO:%lx, IRQ:%d.\n",
		 shpnt->io_port, shpnt->irq);
	atpdev->host_id[0] = host_id;

	atpdev->global_map[0] = FUNC1(atpdev, 0x35);
	atpdev->ultra_map[0] = FUNC3(atpdev, 0x3c);

	n = 0x3f09;
	while (n < 0x4000) {
		m = 0;
		FUNC6(atpdev, 0x34, n);
		n += 0x0002;
		if (FUNC1(atpdev, 0x30) == 0xff)
			break;

		atpdev->sp[0][m++] = FUNC1(atpdev, 0x30);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x31);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x32);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x33);
		FUNC6(atpdev, 0x34, n);
		n += 0x0002;
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x30);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x31);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x32);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x33);
		FUNC6(atpdev, 0x34, n);
		n += 0x0002;
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x30);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x31);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x32);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x33);
		FUNC6(atpdev, 0x34, n);
		n += 0x0002;
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x30);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x31);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x32);
		atpdev->sp[0][m++] = FUNC1(atpdev, 0x33);
		n += 0x0018;
	}
	FUNC6(atpdev, 0x34, 0);
	atpdev->ultra_map[0] = 0;
	atpdev->async[0] = 0;
	for (k = 0; k < 16; k++) {
		n = 1 << k;
		if (atpdev->sp[0][k] > 1)
			atpdev->ultra_map[0] |= n;
		else
			if (atpdev->sp[0][k] == 0)
				atpdev->async[0] |= n;
	}
	atpdev->async[0] = ~(atpdev->async[0]);
	FUNC5(atpdev, 0x35, atpdev->global_map[0]);

	k = FUNC1(atpdev, 0x38) & 0x80;
	FUNC5(atpdev, 0x38, k);
	FUNC5(atpdev, 0x3b, 0x20);
	FUNC8(32);
	FUNC5(atpdev, 0x3b, 0);
	FUNC8(32);
	FUNC2(atpdev, 0, 0x1b);
	FUNC2(atpdev, 0, 0x17);

	FUNC4(atpdev, 0, host_id);

	FUNC11(shpnt, true, FUNC1(atpdev, 0x22));
	FUNC0(atpdev, 0, true, FUNC1(atpdev, 0x3f) & 0x40);
	FUNC5(atpdev, 0x38, 0xb0);
	shpnt->max_id = 16;
	shpnt->this_id = host_id;
}