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
struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {int /*<<< orphan*/  spinlock; scalar_t__ active; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcmuio_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct pcmuio_private *devpriv = dev->private;
	int asic = FUNC1(s);
	struct pcmuio_asic *chip = &devpriv->asics[asic];
	unsigned long flags;

	FUNC2(&chip->spinlock, flags);
	if (chip->active)
		FUNC0(dev, s);
	FUNC3(&chip->spinlock, flags);

	return 0;
}