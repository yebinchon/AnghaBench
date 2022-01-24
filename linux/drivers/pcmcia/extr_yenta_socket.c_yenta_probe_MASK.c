#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int features; int map_size; struct pci_dev* cb_dev; int /*<<< orphan*/  owner; struct yenta_socket* driver_data; TYPE_1__ dev; int /*<<< orphan*/ * resource_ops; int /*<<< orphan*/ * ops; } ;
struct yenta_socket {int /*<<< orphan*/  base; int /*<<< orphan*/  poll_timer; scalar_t__ cb_irq; TYPE_2__ socket; TYPE_4__* type; struct pci_dev* dev; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  subordinate; scalar_t__ irq; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; } ;
struct TYPE_8__ {int (* override ) (struct yenta_socket*) ;} ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 size_t CARDBUS_TYPE_DEFAULT ; 
 int /*<<< orphan*/  CB_SOCKET_MASK ; 
 int /*<<< orphan*/  CB_SOCKET_STATE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int SS_CAP_CARDBUS ; 
 int SS_CAP_PAGE_REGS ; 
 int SS_CAP_PCCARD ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_4__* cardbus_type ; 
 int /*<<< orphan*/  FUNC1 (struct yenta_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct yenta_socket*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_yenta_registers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isa_interrupts ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct yenta_socket*) ; 
 struct yenta_socket* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pccard_nonstatic_ops ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 scalar_t__ FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct yenta_socket*) ; 
 int FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct yenta_socket*) ; 
 int FUNC22 (struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC25 (struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct yenta_socket*) ; 
 int /*<<< orphan*/  FUNC28 (struct yenta_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct yenta_socket*) ; 
 int /*<<< orphan*/  yenta_interrupt ; 
 int /*<<< orphan*/  yenta_interrupt_wrapper ; 
 int /*<<< orphan*/  yenta_socket_operations ; 

__attribute__((used)) static int FUNC30(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct yenta_socket *socket;
	int ret;

	/*
	 * If we failed to assign proper bus numbers for this cardbus
	 * controller during PCI probe, its subordinate pci_bus is NULL.
	 * Bail out if so.
	 */
	if (!dev->subordinate) {
		FUNC4(&dev->dev, "no bus associated! (try 'pci=assign-busses')\n");
		return -ENODEV;
	}

	socket = FUNC11(sizeof(struct yenta_socket), GFP_KERNEL);
	if (!socket)
		return -ENOMEM;

	/* prepare pcmcia_socket */
	socket->socket.ops = &yenta_socket_operations;
	socket->socket.resource_ops = &pccard_nonstatic_ops;
	socket->socket.dev.parent = &dev->dev;
	socket->socket.driver_data = socket;
	socket->socket.owner = THIS_MODULE;
	socket->socket.features = SS_CAP_PAGE_REGS | SS_CAP_PCCARD;
	socket->socket.map_size = 0x1000;
	socket->socket.cb_dev = dev;

	/* prepare struct yenta_socket */
	socket->dev = dev;
	FUNC18(dev, socket);

	/*
	 * Do some basic sanity checking..
	 */
	if (FUNC14(dev)) {
		ret = -EBUSY;
		goto free;
	}

	ret = FUNC16(dev, "yenta_socket");
	if (ret)
		goto disable;

	if (!FUNC17(dev, 0)) {
		FUNC4(&dev->dev, "No cardbus resource!\n");
		ret = -ENODEV;
		goto release;
	}

	/*
	 * Ok, start setup.. Map the cardbus registers,
	 * and request the IRQ.
	 */
	socket->base = FUNC8(FUNC17(dev, 0), 0x1000);
	if (!socket->base) {
		ret = -ENOMEM;
		goto release;
	}

	/*
	 * report the subsystem vendor and device for help debugging
	 * the irq stuff...
	 */
	FUNC5(&dev->dev, "CardBus bridge found [%04x:%04x]\n",
		 dev->subsystem_vendor, dev->subsystem_device);

	FUNC25(socket);

	/* Disable all events */
	FUNC2(socket, CB_SOCKET_MASK, 0x0);

	/* Set up the bridge regions.. */
	FUNC24(socket);

	socket->cb_irq = dev->irq;

	/* Do we have special options for the device? */
	if (id->driver_data != CARDBUS_TYPE_DEFAULT &&
	    id->driver_data < FUNC0(cardbus_type)) {
		socket->type = &cardbus_type[id->driver_data];

		ret = socket->type->override(socket);
		if (ret < 0)
			goto unmap;
	}

	/* We must finish initialization here */

	if (!socket->cb_irq || FUNC21(socket->cb_irq, yenta_interrupt, IRQF_SHARED, "yenta", socket)) {
		/* No IRQ or request_irq failed. Poll */
		socket->cb_irq = 0; /* But zero is a valid IRQ number. */
		FUNC23(&socket->poll_timer, yenta_interrupt_wrapper, 0);
		FUNC12(&socket->poll_timer, jiffies + HZ);
		FUNC5(&dev->dev,
			 "no PCI IRQ, CardBus support disabled for this socket.\n");
		FUNC5(&dev->dev,
			 "check your BIOS CardBus, BIOS IRQ or ACPI settings.\n");
	} else {
		socket->socket.features |= SS_CAP_CARDBUS;
	}

	/* Figure out what the dang thing can do for the PCMCIA layer... */
	FUNC29(socket);
	FUNC28(socket, isa_interrupts);
	FUNC5(&dev->dev, "Socket status: %08x\n",
		 FUNC1(socket, CB_SOCKET_STATE));

	FUNC26(dev->subordinate);

	/* Register it with the pcmcia layer.. */
	ret = FUNC19(&socket->socket);
	if (ret)
		goto free_irq;

	/* Add the yenta register attributes */
	ret = FUNC6(&dev->dev, &dev_attr_yenta_registers);
	if (ret)
		goto unregister_socket;

	return ret;

	/* error path... */
 unregister_socket:
	FUNC20(&socket->socket);
 free_irq:
	if (socket->cb_irq)
		FUNC7(socket->cb_irq, socket);
	else
		FUNC3(&socket->poll_timer);
 unmap:
	FUNC9(socket->base);
	FUNC27(socket);
 release:
	FUNC15(dev);
 disable:
	FUNC13(dev);
 free:
	FUNC18(dev, NULL);
	FUNC10(socket);
	return ret;
}