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
struct usbduxsigma_private {unsigned int pwm_cmd_running; unsigned int pwm_period; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct usbduxsigma_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_ARM 134 
#define  INSN_CONFIG_DISARM 133 
#define  INSN_CONFIG_GET_PWM_STATUS 132 
#define  INSN_CONFIG_PWM_GET_H_BRIDGE 131 
#define  INSN_CONFIG_PWM_GET_PERIOD 130 
#define  INSN_CONFIG_PWM_SET_H_BRIDGE 129 
#define  INSN_CONFIG_PWM_SET_PERIOD 128 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int,int) ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,unsigned int) ; 
 int FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	struct usbduxsigma_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);

	switch (data[0]) {
	case INSN_CONFIG_ARM:
		/*
		 * if not zero the PWM is limited to a certain time which is
		 * not supported here
		 */
		if (data[1] != 0)
			return -EINVAL;
		return FUNC4(dev, s);
	case INSN_CONFIG_DISARM:
		return FUNC1(dev, s);
	case INSN_CONFIG_GET_PWM_STATUS:
		data[1] = devpriv->pwm_cmd_running;
		return 0;
	case INSN_CONFIG_PWM_SET_PERIOD:
		return FUNC3(dev, s, data[1]);
	case INSN_CONFIG_PWM_GET_PERIOD:
		data[1] = devpriv->pwm_period;
		return 0;
	case INSN_CONFIG_PWM_SET_H_BRIDGE:
		/*
		 * data[1] = value
		 * data[2] = sign (for a relay)
		 */
		FUNC2(dev, s, chan, data[1], (data[2] != 0));
		return 0;
	case INSN_CONFIG_PWM_GET_H_BRIDGE:
		/* values are not kept in this driver, nothing to return */
		return -EINVAL;
	}
	return -EINVAL;
}