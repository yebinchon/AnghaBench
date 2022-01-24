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
struct pciserial_board {int flags; int num_ports; } ;
struct pci_dev {int class; } ;

/* Variables and functions */
 int ENODEV ; 
 int FL_BASE_BARS ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int PCI_CLASS_COMMUNICATION_MULTISERIAL ; 
 int PCI_NUM_BAR_RESOURCES ; 
 int FUNC0 (struct pci_dev*,int) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 int FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC3(struct pci_dev *dev, struct pciserial_board *board)
{
	int num_iomem, num_port, first_port = -1, i;
	int rc;

	rc = FUNC2(dev);
	if (rc)
		return rc;

	/*
	 * Should we try to make guesses for multiport serial devices later?
	 */
	if ((dev->class >> 8) == PCI_CLASS_COMMUNICATION_MULTISERIAL)
		return -ENODEV;

	num_iomem = num_port = 0;
	for (i = 0; i < PCI_NUM_BAR_RESOURCES; i++) {
		if (FUNC0(dev, i) & IORESOURCE_IO) {
			num_port++;
			if (first_port == -1)
				first_port = i;
		}
		if (FUNC0(dev, i) & IORESOURCE_MEM)
			num_iomem++;
	}

	/*
	 * If there is 1 or 0 iomem regions, and exactly one port,
	 * use it.  We guess the number of ports based on the IO
	 * region size.
	 */
	if (num_iomem <= 1 && num_port == 1) {
		board->flags = first_port;
		board->num_ports = FUNC1(dev, first_port) / 8;
		return 0;
	}

	/*
	 * Now guess if we've got a board which indexes by BARs.
	 * Each IO BAR should be 8 bytes, and they should follow
	 * consecutively.
	 */
	first_port = -1;
	num_port = 0;
	for (i = 0; i < PCI_NUM_BAR_RESOURCES; i++) {
		if (FUNC0(dev, i) & IORESOURCE_IO &&
		    FUNC1(dev, i) == 8 &&
		    (first_port == -1 || (first_port + num_port) == i)) {
			num_port++;
			if (first_port == -1)
				first_port = i;
		}
	}

	if (num_port > 1) {
		board->flags = first_port | FL_BASE_BARS;
		board->num_ports = num_port;
		return 0;
	}

	return -ENODEV;
}