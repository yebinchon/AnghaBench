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
struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ DMM32AT_AI_CFG_REG ; 
 scalar_t__ DMM32AT_AI_HI_CHAN_REG ; 
 scalar_t__ DMM32AT_AI_LO_CHAN_REG ; 
 unsigned int DMM32AT_FIFO_CTRL_FIFORST ; 
 scalar_t__ DMM32AT_FIFO_CTRL_REG ; 
 unsigned int DMM32AT_FIFO_CTRL_SCANEN ; 
 unsigned int* dmm32at_rangebits ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
				    struct comedi_subdevice *s,
				    unsigned int chanspec, int nchan)
{
	unsigned int chan = FUNC0(chanspec);
	unsigned int range = FUNC1(chanspec);
	unsigned int last_chan = (chan + nchan - 1) % s->n_chan;

	FUNC2(DMM32AT_FIFO_CTRL_FIFORST, dev->iobase + DMM32AT_FIFO_CTRL_REG);

	if (nchan > 1)
		FUNC2(DMM32AT_FIFO_CTRL_SCANEN,
		     dev->iobase + DMM32AT_FIFO_CTRL_REG);

	FUNC2(chan, dev->iobase + DMM32AT_AI_LO_CHAN_REG);
	FUNC2(last_chan, dev->iobase + DMM32AT_AI_HI_CHAN_REG);
	FUNC2(dmm32at_rangebits[range], dev->iobase + DMM32AT_AI_CFG_REG);
}