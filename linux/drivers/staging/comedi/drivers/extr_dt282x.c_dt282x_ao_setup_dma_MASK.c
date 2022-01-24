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
struct dt282x_private {struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  maxsize; } ;
struct comedi_isadma {struct comedi_isadma_desc* desc; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct dt282x_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
					struct comedi_subdevice *s,
					int cur_dma)
{
	struct dt282x_private *devpriv = dev->private;
	struct comedi_isadma *dma = devpriv->dma;
	struct comedi_isadma_desc *desc = &dma->desc[cur_dma];
	unsigned int nsamples = FUNC1(s, desc->maxsize);
	unsigned int nbytes;

	nbytes = FUNC0(s, desc->virt_addr, nsamples);
	if (nbytes)
		FUNC3(dev, cur_dma, nbytes);
	else
		FUNC2(dev->class_dev, "AO underrun\n");

	return nbytes;
}