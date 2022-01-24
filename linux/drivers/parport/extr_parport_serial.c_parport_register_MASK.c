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
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int irq; int /*<<< orphan*/  dev; } ;
struct parport_pc_pci {int numports; int /*<<< orphan*/  (* postinit_hook ) (struct pci_dev*,struct parport_pc_pci*,int) ;TYPE_1__* addr; scalar_t__ (* preinit_hook ) (struct pci_dev*,struct parport_pc_pci*,int,int /*<<< orphan*/ ) ;} ;
struct parport_serial_private {scalar_t__ num_par; struct parport** port; struct parport_pc_pci par; } ;
struct parport {int dummy; } ;
struct TYPE_2__ {int lo; int hi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct parport**) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  PARPORT_DMA_NONE ; 
 int PARPORT_IRQ_NONE ; 
 struct parport_pc_pci* cards ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 struct parport* FUNC3 (unsigned long,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct parport_serial_private* FUNC4 (struct pci_dev*) ; 
 unsigned long FUNC5 (struct pci_dev*,int) ; 
 scalar_t__ FUNC6 (struct pci_dev*,struct parport_pc_pci*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct parport_pc_pci*,int) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct parport_pc_pci *card;
	struct parport_serial_private *priv = FUNC4 (dev);
	int n, success = 0;

	priv->par = cards[id->driver_data];
	card = &priv->par;
	if (card->preinit_hook &&
	    card->preinit_hook (dev, card, PARPORT_IRQ_NONE, PARPORT_DMA_NONE))
		return -ENODEV;

	for (n = 0; n < card->numports; n++) {
		struct parport *port;
		int lo = card->addr[n].lo;
		int hi = card->addr[n].hi;
		unsigned long io_lo, io_hi;
		int irq;

		if (priv->num_par == FUNC0 (priv->port)) {
			FUNC2(&dev->dev,
				 "only %zu parallel ports supported (%d reported)\n",
				 FUNC0(priv->port), card->numports);
			break;
		}

		io_lo = FUNC5 (dev, lo);
		io_hi = 0;
		if ((hi >= 0) && (hi <= 6))
			io_hi = FUNC5 (dev, hi);
		else if (hi > 6)
			io_lo += hi; /* Reinterpret the meaning of
                                        "hi" as an offset (see SYBA
                                        def.) */
		/* TODO: test if sharing interrupts works */
		irq = dev->irq;
		if (irq == IRQ_NONE) {
			FUNC1(&dev->dev,
				"PCI parallel port detected: I/O at %#lx(%#lx)\n",
				io_lo, io_hi);
			irq = PARPORT_IRQ_NONE;
		} else {
			FUNC1(&dev->dev,
				"PCI parallel port detected: I/O at %#lx(%#lx), IRQ %d\n",
				io_lo, io_hi, irq);
		}
		port = FUNC3 (io_lo, io_hi, irq,
			      PARPORT_DMA_NONE, &dev->dev, IRQF_SHARED);
		if (port) {
			priv->port[priv->num_par++] = port;
			success = 1;
		}
	}

	if (card->postinit_hook)
		card->postinit_hook (dev, card, !success);

	return 0;
}