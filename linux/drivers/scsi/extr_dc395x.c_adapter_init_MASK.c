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
struct ScsiReqBlk {int dummy; } ;
struct DeviceCtlBlk {int dummy; } ;
struct AdapterCtlBlk {unsigned long io_port_base; unsigned int irq_level; int /*<<< orphan*/  io_port_len; int /*<<< orphan*/  srb_array; int /*<<< orphan*/  dcb_map; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DC395X_NAME ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*) ; 
 scalar_t__ FUNC4 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  dc395x_interrupt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct AdapterCtlBlk*) ; 

__attribute__((used)) static int FUNC15(struct AdapterCtlBlk *acb, unsigned long io_port,
			u32 io_port_len, unsigned int irq)
{
	if (!FUNC13(io_port, io_port_len, DC395X_NAME)) {
		FUNC8(KERN_ERR, "Failed to reserve IO region 0x%lx\n", io_port);
		goto failed;
	}
	/* store port base to indicate we have registered it */
	acb->io_port_base = io_port;
	acb->io_port_len = io_port_len;
	
	if (FUNC12(irq, dc395x_interrupt, IRQF_SHARED, DC395X_NAME, acb)) {
	    	/* release the region we just claimed */
		FUNC8(KERN_INFO, "Failed to register IRQ\n");
		goto failed;
	}
	/* store irq to indicate we have registered it */
	acb->irq_level = irq;

	/* get eeprom configuration information and command line settings etc */
	FUNC6(&acb->eeprom, io_port);
 	FUNC10(&acb->eeprom);

	/* setup adapter control block */	
	FUNC1(acb);
	
	/* display card connectors/termination settings */
 	FUNC3(acb);

	if (FUNC4(acb)) {
		FUNC8(KERN_DEBUG, "Memory allocation for SG tables failed\n");
		goto failed;
	}
	FUNC2(acb->scsi_host);
	FUNC0(acb);
	FUNC14(acb);

	FUNC7(DBG_0,
		"adapter_init: acb=%p, pdcb_map=%p psrb_array=%p "
		"size{acb=0x%04x dcb=0x%04x srb=0x%04x}\n",
		acb, acb->dcb_map, acb->srb_array, sizeof(struct AdapterCtlBlk),
		sizeof(struct DeviceCtlBlk), sizeof(struct ScsiReqBlk));
	return 0;

failed:
	if (acb->irq_level)
		FUNC9(acb->irq_level, acb);
	if (acb->io_port_base)
		FUNC11(acb->io_port_base, acb->io_port_len);
	FUNC5(acb);

	return 1;
}