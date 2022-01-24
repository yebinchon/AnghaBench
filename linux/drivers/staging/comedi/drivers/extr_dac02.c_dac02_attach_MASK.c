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
struct comedi_subdevice {int n_chan; int maxdata; int /*<<< orphan*/  insn_write; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  subdev_flags; int /*<<< orphan*/  type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int /*<<< orphan*/ * options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AO ; 
 int /*<<< orphan*/  SDF_WRITABLE ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dac02_ao_insn_write ; 
 int /*<<< orphan*/  das02_ao_ranges ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	int ret;

	ret = FUNC2(dev, it->options[0], 0x08);
	if (ret)
		return ret;

	ret = FUNC1(dev, 1);
	if (ret)
		return ret;

	/* Analog Output subdevice */
	s = &dev->subdevices[0];
	s->type		= COMEDI_SUBD_AO;
	s->subdev_flags	= SDF_WRITABLE;
	s->n_chan	= 2;
	s->maxdata	= 0x0fff;
	s->range_table	= &das02_ao_ranges;
	s->insn_write	= dac02_ao_insn_write;

	return FUNC0(s);
}