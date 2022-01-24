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
struct comedi_device {int dummy; } ;
struct comedi_devconfig {int* options; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct comedi_device*,int,int) ; 
 struct pci_dev* FUNC2 (struct comedi_device*,struct comedi_devconfig*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			  struct comedi_devconfig *it)
{
	struct pci_dev *pcidev;
	int ext_mux, softsshdelay;

	ext_mux = it->options[2];
	softsshdelay = it->options[4];

	pcidev = FUNC2(dev, it);
	if (!pcidev)
		return -EIO;
	FUNC0(dev, &pcidev->dev);

	return FUNC1(dev, ext_mux, softsshdelay);
}