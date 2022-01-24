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
struct Scsi_Host {int dma_channel; int irq; int this_id; int /*<<< orphan*/  io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RETCONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DF ; 
 int /*<<< orphan*/  HACC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTRMASK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct Scsi_Host *sh)
{
	u8 inquiry_result[3];
	int i;
	i = FUNC6(FUNC2(sh->io_port));
	if (i & DF) {
		i = FUNC6(FUNC0(sh->io_port));
	};
	FUNC5(sh->io_port, CMD_RETCONF);
	FUNC3(sh->io_port, inquiry_result, 3, 0);
	if (!FUNC8(FUNC1(sh->io_port), INTRMASK, HACC, 0, 0))
		FUNC7(KERN_ERR, sh, "error querying board settings\n");
	FUNC4(sh->io_port);
	switch (inquiry_result[0]) {
	case 0x80:
		sh->dma_channel = 7;
		break;
	case 0x40:
		sh->dma_channel = 6;
		break;
	case 0x20:
		sh->dma_channel = 5;
		break;
	case 0x01:
		sh->dma_channel = 0;
		break;
	case 0:
		/* This means that the adapter, although Adaptec 1542 compatible, doesn't use a DMA channel.
		   Currently only aware of the BusLogic BT-445S VL-Bus adapter which needs this. */
		sh->dma_channel = 0xFF;
		break;
	default:
		FUNC7(KERN_ERR, sh, "Unable to determine DMA channel.\n");
		return -1;
	};
	switch (inquiry_result[1]) {
	case 0x40:
		sh->irq = 15;
		break;
	case 0x20:
		sh->irq = 14;
		break;
	case 0x8:
		sh->irq = 12;
		break;
	case 0x4:
		sh->irq = 11;
		break;
	case 0x2:
		sh->irq = 10;
		break;
	case 0x1:
		sh->irq = 9;
		break;
	default:
		FUNC7(KERN_ERR, sh, "Unable to determine IRQ level.\n");
		return -1;
	};
	sh->this_id = inquiry_result[2] & 7;
	return 0;
}