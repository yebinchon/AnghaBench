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
typedef  int u32 ;
struct uart_8250_port {int /*<<< orphan*/  port; } ;
struct serial_private {int /*<<< orphan*/ * line; } ;
struct pci_dev {int device; int irq; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct serial_private* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 
 struct uart_8250_port* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev)
{
	unsigned long iobase;
	u32 max_port, i;
	resource_size_t bar_data[3];
	u8 config_base;
	struct serial_private *priv = FUNC1(dev);
	struct uart_8250_port *port;

	if (!(FUNC2(dev, 5) & IORESOURCE_IO) ||
			!(FUNC2(dev, 4) & IORESOURCE_IO) ||
			!(FUNC2(dev, 3) & IORESOURCE_IO))
		return -ENODEV;

	switch (dev->device) {
	case 0x1104: /* 4 ports */
	case 0x1108: /* 8 ports */
		max_port = dev->device & 0xff;
		break;
	case 0x1112: /* 12 ports */
		max_port = 12;
		break;
	default:
		return -EINVAL;
	}

	/* Get the io address dispatch from the BIOS */
	bar_data[0] = FUNC3(dev, 5);
	bar_data[1] = FUNC3(dev, 4);
	bar_data[2] = FUNC3(dev, 3);

	for (i = 0; i < max_port; ++i) {
		/* UART0 configuration offset start from 0x40 */
		config_base = 0x40 + 0x08 * i;

		/* Calculate Real IO Port */
		iobase = (bar_data[i / 4] & 0xffffffe0) + (i % 4) * 8;

		/* Enable UART I/O port */
		FUNC4(dev, config_base + 0x00, 0x01);

		/* Select 128-byte FIFO and 8x FIFO threshold */
		FUNC4(dev, config_base + 0x01, 0x33);

		/* LSB UART */
		FUNC4(dev, config_base + 0x04,
				(u8)(iobase & 0xff));

		/* MSB UART */
		FUNC4(dev, config_base + 0x05,
				(u8)((iobase & 0xff00) >> 8));

		FUNC4(dev, config_base + 0x06, dev->irq);

		if (priv) {
			/* re-apply RS232/485 mode when
			 * pciserial_resume_ports()
			 */
			port = FUNC5(priv->line[i]);
			FUNC0(&port->port, NULL);
		} else {
			/* First init without port data
			 * force init to RS232 Mode
			 */
			FUNC4(dev, config_base + 0x07, 0x01);
		}
	}

	return max_port;
}