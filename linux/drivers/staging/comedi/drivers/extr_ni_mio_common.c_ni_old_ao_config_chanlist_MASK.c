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
struct ni_private {unsigned int* ao_conf; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 scalar_t__ AREF_OTHER ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int CR_DEGLITCH ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int NI_E_AO_CFG_BIP ; 
 int /*<<< orphan*/  NI_E_AO_CFG_REG ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int NI_E_AO_DEGLITCH ; 
 unsigned int NI_E_AO_EXT_REF ; 
 unsigned int NI_E_AO_GROUND_REF ; 
 scalar_t__ FUNC4 (struct comedi_subdevice*,unsigned int) ; 
 scalar_t__ FUNC5 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     unsigned int chanspec[],
				     unsigned int n_chans)
{
	struct ni_private *devpriv = dev->private;
	unsigned int range;
	unsigned int chan;
	unsigned int conf;
	int i;
	int invert = 0;

	for (i = 0; i < n_chans; i++) {
		chan = FUNC1(chanspec[i]);
		range = FUNC2(chanspec[i]);
		conf = FUNC3(chan);

		if (FUNC4(s, range)) {
			conf |= NI_E_AO_CFG_BIP;
			invert = (s->maxdata + 1) >> 1;
		} else {
			invert = 0;
		}
		if (FUNC5(s, range))
			conf |= NI_E_AO_EXT_REF;

		/* not all boards can deglitch, but this shouldn't hurt */
		if (chanspec[i] & CR_DEGLITCH)
			conf |= NI_E_AO_DEGLITCH;

		/* analog reference */
		/* AREF_OTHER connects AO ground to AI ground, i think */
		if (FUNC0(chanspec[i]) == AREF_OTHER)
			conf |= NI_E_AO_GROUND_REF;

		FUNC6(dev, conf, NI_E_AO_CFG_REG);
		devpriv->ao_conf[chan] = conf;
	}
	return invert;
}