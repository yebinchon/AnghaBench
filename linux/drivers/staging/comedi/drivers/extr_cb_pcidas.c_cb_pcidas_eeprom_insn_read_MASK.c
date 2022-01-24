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
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ amcc; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ; 
 scalar_t__ AMCC_OP_REG_MCSR_NVDATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MCSR_NV_ENABLE ; 
 unsigned int MCSR_NV_LOAD_HIGH_ADDR ; 
 unsigned int MCSR_NV_LOAD_LOW_ADDR ; 
 unsigned int MCSR_NV_READ ; 
 int /*<<< orphan*/  cb_pcidas_eeprom_ready ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);
	int ret;
	int i;

	for (i = 0; i < insn->n; i++) {
		/* make sure eeprom is ready */
		ret = FUNC1(dev, s, insn, cb_pcidas_eeprom_ready, 0);
		if (ret)
			return ret;

		/* set address (chan) and read operation */
		FUNC3(MCSR_NV_ENABLE | MCSR_NV_LOAD_LOW_ADDR,
		     devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);
		FUNC3(chan & 0xff, devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
		FUNC3(MCSR_NV_ENABLE | MCSR_NV_LOAD_HIGH_ADDR,
		     devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);
		FUNC3((chan >> 8) & 0xff,
		     devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
		FUNC3(MCSR_NV_ENABLE | MCSR_NV_READ,
		     devpriv->amcc + AMCC_OP_REG_MCSR_NVCMD);

		/* wait for data to be returned */
		ret = FUNC1(dev, s, insn, cb_pcidas_eeprom_ready, 0);
		if (ret)
			return ret;

		data[i] = FUNC2(devpriv->amcc + AMCC_OP_REG_MCSR_NVDATA);
	}

	return insn->n;
}