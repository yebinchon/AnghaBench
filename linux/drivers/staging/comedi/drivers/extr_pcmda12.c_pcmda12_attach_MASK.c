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
struct pcmda12_private {int /*<<< orphan*/  simultaneous_xfer_mode; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  insn_write; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int /*<<< orphan*/ * options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int ENOMEM ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 struct pcmda12_private* FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_subdevice*) ; 
 int FUNC2 (struct comedi_device*,int) ; 
 int FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pcmda12_ao_insn_read ; 
 int /*<<< orphan*/  pcmda12_ao_insn_write ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  pcmda12_ranges ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			  struct comedi_devconfig *it)
{
	struct pcmda12_private *devpriv;
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC3(dev, it->options[0], 0x10);
	if (ret)
		return ret;

	devpriv = FUNC0(dev, sizeof(*devpriv));
	if (!devpriv)
		return -ENOMEM;

	devpriv->simultaneous_xfer_mode = it->options[1];

	ret = FUNC2(dev, 1);
	if (ret)
		return ret;

	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_AO;
	s->subdev_flags	= SDF_READABLE | SDF_WRITABLE;
	s->n_chan	= 8;
	s->maxdata	= 0x0fff;
	s->range_table	= &pcmda12_ranges;
	s->insn_write	= pcmda12_ao_insn_write;
	s->insn_read	= pcmda12_ao_insn_read;

	ret = FUNC1(s);
	if (ret)
		return ret;

	FUNC4(dev, s);

	return 0;
}