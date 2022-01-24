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
struct pci230_private {int /*<<< orphan*/  ai_stop_spinlock; scalar_t__ ai_cmd_started; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GAT_GND ; 
 int /*<<< orphan*/  GAT_VCC ; 
 scalar_t__ PCI230_ZGAT_SCE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
					struct comedi_subdevice *s,
					unsigned int trig_num)
{
	struct pci230_private *devpriv = dev->private;
	unsigned long irqflags;
	unsigned char zgat;

	if (trig_num)
		return -EINVAL;

	FUNC2(&devpriv->ai_stop_spinlock, irqflags);
	if (devpriv->ai_cmd_started) {
		/* Trigger scan by waggling CT0 gate source. */
		zgat = FUNC1(0, GAT_GND);
		FUNC0(zgat, dev->iobase + PCI230_ZGAT_SCE);
		zgat = FUNC1(0, GAT_VCC);
		FUNC0(zgat, dev->iobase + PCI230_ZGAT_SCE);
	}
	FUNC3(&devpriv->ai_stop_spinlock, irqflags);

	return 1;
}