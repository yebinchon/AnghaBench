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
struct pci_device_id {int dummy; } ;
struct pci_dev {unsigned int irq; int /*<<< orphan*/  dev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterCtlBlk {struct pci_dev* dev; struct Scsi_Host* scsi_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned long PCI_BASE_ADDRESS_IO_MASK ; 
 scalar_t__ FUNC0 (struct AdapterCtlBlk*,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dc395x_driver_template ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 unsigned int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 scalar_t__ FUNC12 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC15 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct Scsi_Host *scsi_host = NULL;
	struct AdapterCtlBlk *acb = NULL;
	unsigned long io_port_base;
	unsigned int io_port_len;
	unsigned int irq;
	
	FUNC3(DBG_0, "Init one instance (%s)\n", FUNC7(dev));
	FUNC2();

	if (FUNC6(dev))
	{
		FUNC4(KERN_INFO, "PCI Enable device failed.\n");
		return -ENODEV;
	}
	io_port_base = FUNC9(dev, 0) & PCI_BASE_ADDRESS_IO_MASK;
	io_port_len = FUNC8(dev, 0);
	irq = dev->irq;
	FUNC3(DBG_0, "IO_PORT=0x%04lx, IRQ=0x%x\n", io_port_base, dev->irq);

	/* allocate scsi host information (includes out adapter) */
	scsi_host = FUNC13(&dc395x_driver_template,
				    sizeof(struct AdapterCtlBlk));
	if (!scsi_host) {
		FUNC4(KERN_INFO, "scsi_host_alloc failed\n");
		goto fail;
	}
 	acb = (struct AdapterCtlBlk*)scsi_host->hostdata;
 	acb->scsi_host = scsi_host;
 	acb->dev = dev;

	/* initialise the adapter and everything we need */
 	if (FUNC0(acb, io_port_base, io_port_len, irq)) {
		FUNC4(KERN_INFO, "adapter init failed\n");
		goto fail;
	}

	FUNC11(dev);

	/* get the scsi mid level to scan for new devices on the bus */
	if (FUNC12(scsi_host, &dev->dev)) {
		FUNC4(KERN_ERR, "scsi_add_host failed\n");
		goto fail;
	}
	FUNC10(dev, scsi_host);
	FUNC15(scsi_host);
        	
	return 0;

fail:
	if (acb != NULL)
		FUNC1(acb);
	if (scsi_host != NULL)
		FUNC14(scsi_host);
	FUNC5(dev);
	return -ENODEV;
}