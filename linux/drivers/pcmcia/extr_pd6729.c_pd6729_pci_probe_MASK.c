#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int features; int map_size; scalar_t__ pci_irq; struct pd6729_socket* driver_data; TYPE_1__ dev; int /*<<< orphan*/ * resource_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; struct pci_dev* cb_dev; scalar_t__ irq_mask; } ;
struct pd6729_socket {int number; int /*<<< orphan*/  poll_timer; TYPE_2__ socket; scalar_t__ io_base; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int MAX_SOCKETS ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 char PCI_COMMAND_MEMORY ; 
 int SS_CAP_PAGE_REGS ; 
 int SS_CAP_PCCARD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct pd6729_socket*) ; 
 int irq_mode ; 
 scalar_t__ jiffies ; 
 struct pd6729_socket* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pd6729_socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pccard_nonstatic_ops ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct pd6729_socket*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,char) ; 
 int FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  pd6729_interrupt ; 
 int /*<<< orphan*/  pd6729_interrupt_wrapper ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  pd6729_operations ; 
 int FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pd6729_socket*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *dev,
				      const struct pci_device_id *id)
{
	int i, j, ret;
	u_int mask;
	char configbyte;
	struct pd6729_socket *socket;

	socket = FUNC6(MAX_SOCKETS, sizeof(struct pd6729_socket),
			 GFP_KERNEL);
	if (!socket) {
		FUNC4(&dev->dev, "failed to kzalloc socket.\n");
		return -ENOMEM;
	}

	ret = FUNC10(dev);
	if (ret) {
		FUNC4(&dev->dev, "failed to enable pci_device.\n");
		goto err_out_free_mem;
	}

	if (!FUNC14(dev, 0)) {
		FUNC4(&dev->dev, "refusing to load the driver as the "
			"io_base is NULL.\n");
		ret = -ENOMEM;
		goto err_out_disable;
	}

	FUNC3(&dev->dev, "Cirrus PD6729 PCI to PCMCIA Bridge at 0x%llx "
		"on irq %d\n",
		(unsigned long long)FUNC14(dev, 0), dev->irq);
	/*
	 * Since we have no memory BARs some firmware may not
	 * have had PCI_COMMAND_MEMORY enabled, yet the device needs it.
	 */
	FUNC11(dev, PCI_COMMAND, &configbyte);
	if (!(configbyte & PCI_COMMAND_MEMORY)) {
		FUNC1(&dev->dev, "pd6729: Enabling PCI_COMMAND_MEMORY.\n");
		configbyte |= PCI_COMMAND_MEMORY;
		FUNC16(dev, PCI_COMMAND, configbyte);
	}

	ret = FUNC13(dev, "pd6729");
	if (ret) {
		FUNC4(&dev->dev, "pci request region failed.\n");
		goto err_out_disable;
	}

	if (dev->irq == NO_IRQ)
		irq_mode = 0;	/* fall back to ISA interrupt mode */

	mask = FUNC19();
	if (irq_mode == 0 && mask == 0) {
		FUNC4(&dev->dev, "no ISA interrupt is available.\n");
		ret = -ENODEV;
		goto err_out_free_res;
	}

	for (i = 0; i < MAX_SOCKETS; i++) {
		socket[i].io_base = FUNC14(dev, 0);
		socket[i].socket.features |= SS_CAP_PAGE_REGS | SS_CAP_PCCARD;
		socket[i].socket.map_size = 0x1000;
		socket[i].socket.irq_mask = mask;
		socket[i].socket.pci_irq  = dev->irq;
		socket[i].socket.cb_dev = dev;
		socket[i].socket.owner = THIS_MODULE;

		socket[i].number = i;

		socket[i].socket.ops = &pd6729_operations;
		socket[i].socket.resource_ops = &pccard_nonstatic_ops;
		socket[i].socket.dev.parent = &dev->dev;
		socket[i].socket.driver_data = &socket[i];
	}

	FUNC15(dev, socket);
	if (irq_mode == 1) {
		/* Register the interrupt handler */
		ret = FUNC20(dev->irq, pd6729_interrupt, IRQF_SHARED,
				  "pd6729", socket);
		if (ret) {
			FUNC2(&dev->dev, "Failed to register irq %d\n",
				dev->irq);
			goto err_out_free_res;
		}
	} else {
		/* poll Card status change */
		FUNC21(&socket->poll_timer, pd6729_interrupt_wrapper, 0);
		FUNC8(&socket->poll_timer, jiffies + HZ);
	}

	for (i = 0; i < MAX_SOCKETS; i++) {
		ret = FUNC17(&socket[i].socket);
		if (ret) {
			FUNC4(&dev->dev, "pcmcia_register_socket failed.\n");
			for (j = 0; j < i ; j++)
				FUNC18(&socket[j].socket);
			goto err_out_free_res2;
		}
	}

	return 0;

err_out_free_res2:
	if (irq_mode == 1)
		FUNC5(dev->irq, socket);
	else
		FUNC0(&socket->poll_timer);
err_out_free_res:
	FUNC12(dev);
err_out_disable:
	FUNC9(dev);

err_out_free_mem:
	FUNC7(socket);
	return ret;
}