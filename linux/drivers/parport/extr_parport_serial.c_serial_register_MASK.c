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
struct serial_private {int dummy; } ;
struct pciserial_board {scalar_t__ num_ports; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dummy; } ;
struct parport_serial_private {struct serial_private* serial; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct serial_private*) ; 
 int FUNC1 (struct serial_private*) ; 
 struct parport_serial_private* FUNC2 (struct pci_dev*) ; 
 struct pciserial_board* pci_parport_serial_boards ; 
 struct serial_private* FUNC3 (struct pci_dev*,struct pciserial_board*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct parport_serial_private *priv = FUNC2 (dev);
	struct pciserial_board *board;
	struct serial_private *serial;

	board = &pci_parport_serial_boards[id->driver_data];
	if (board->num_ports == 0)
		return 0;

	serial = FUNC3(dev, board);
	if (FUNC0(serial))
		return FUNC1(serial);

	priv->serial = serial;
	return 0;
}