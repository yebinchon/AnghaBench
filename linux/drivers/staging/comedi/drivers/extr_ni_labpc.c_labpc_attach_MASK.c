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
struct comedi_device {scalar_t__ irq; } ;
struct comedi_devconfig {unsigned int* options; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_device*,unsigned int,int) ; 
 int FUNC1 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_devconfig *it)
{
	unsigned int irq = it->options[1];
	unsigned int dma_chan = it->options[2];
	int ret;

	ret = FUNC0(dev, it->options[0], 0x20);
	if (ret)
		return ret;

	ret = FUNC1(dev, irq, 0);
	if (ret)
		return ret;

	if (dev->irq)
		FUNC2(dev, dma_chan);

	return 0;
}