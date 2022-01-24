#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_private {unsigned int* ao_conf; } ;
struct comedi_subdevice {int n_chan; TYPE_1__* range_table; } ;
struct comedi_krange {int max; int min; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct ni_private* private; } ;
struct TYPE_2__ {struct comedi_krange* range; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int NI_M_AO_CFG_BANK_OFFSET_0V ; 
 unsigned int NI_M_AO_CFG_BANK_OFFSET_5V ; 
 unsigned int NI_M_AO_CFG_BANK_REF_INT_10V ; 
 unsigned int NI_M_AO_CFG_BANK_REF_INT_5V ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int NI_M_AO_CFG_BANK_UPDATE_TIMED ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int NI_M_AO_REF_ATTENUATION_X5 ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
					  struct comedi_subdevice *s,
					  unsigned int chanspec[],
					  unsigned int n_chans, int timed)
{
	struct ni_private *devpriv = dev->private;
	unsigned int range;
	unsigned int chan;
	unsigned int conf;
	int i;
	int invert = 0;

	if (timed) {
		for (i = 0; i < s->n_chan; ++i) {
			devpriv->ao_conf[i] &= ~NI_M_AO_CFG_BANK_UPDATE_TIMED;
			FUNC6(dev, devpriv->ao_conf[i],
				  FUNC2(i));
			FUNC6(dev, 0xf, FUNC4(i));
		}
	}
	for (i = 0; i < n_chans; i++) {
		const struct comedi_krange *krange;

		chan = FUNC0(chanspec[i]);
		range = FUNC1(chanspec[i]);
		krange = s->range_table->range + range;
		invert = 0;
		conf = 0;
		switch (krange->max - krange->min) {
		case 20000000:
			conf |= NI_M_AO_CFG_BANK_REF_INT_10V;
			FUNC6(dev, 0, FUNC3(chan));
			break;
		case 10000000:
			conf |= NI_M_AO_CFG_BANK_REF_INT_5V;
			FUNC6(dev, 0, FUNC3(chan));
			break;
		case 4000000:
			conf |= NI_M_AO_CFG_BANK_REF_INT_10V;
			FUNC6(dev, NI_M_AO_REF_ATTENUATION_X5,
				  FUNC3(chan));
			break;
		case 2000000:
			conf |= NI_M_AO_CFG_BANK_REF_INT_5V;
			FUNC6(dev, NI_M_AO_REF_ATTENUATION_X5,
				  FUNC3(chan));
			break;
		default:
			FUNC5(dev->class_dev,
				"bug! unhandled ao reference voltage\n");
			break;
		}
		switch (krange->max + krange->min) {
		case 0:
			conf |= NI_M_AO_CFG_BANK_OFFSET_0V;
			break;
		case 10000000:
			conf |= NI_M_AO_CFG_BANK_OFFSET_5V;
			break;
		default:
			FUNC5(dev->class_dev,
				"bug! unhandled ao offset voltage\n");
			break;
		}
		if (timed)
			conf |= NI_M_AO_CFG_BANK_UPDATE_TIMED;
		FUNC6(dev, conf, FUNC2(chan));
		devpriv->ao_conf[chan] = conf;
		FUNC6(dev, i, FUNC4(chan));
	}
	return invert;
}