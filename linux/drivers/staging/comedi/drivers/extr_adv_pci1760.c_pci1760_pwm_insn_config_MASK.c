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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  INSN_CONFIG_ARM 132 
#define  INSN_CONFIG_DISARM 131 
#define  INSN_CONFIG_GET_PWM_OUTPUT 130 
#define  INSN_CONFIG_GET_PWM_STATUS 129 
#define  INSN_CONFIG_PWM_OUTPUT 128 
 int PCI1760_CMD_ENA_PWM ; 
 int PCI1760_CMD_GET_STATUS ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int PCI1760_PWM_TIMEBASE ; 
 int FUNC5 (struct comedi_device*,int,int) ; 
 int FUNC6 (struct comedi_device*,unsigned int,int) ; 
 int FUNC7 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn,
				   unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	int hi_div;
	int lo_div;
	int ret;

	switch (data[0]) {
	case INSN_CONFIG_ARM:
		ret = FUNC6(dev, chan, false);
		if (ret < 0)
			return ret;

		if (data[1] > 0xffff)
			return -EINVAL;
		ret = FUNC5(dev, FUNC2(chan), data[1]);
		if (ret < 0)
			return ret;

		ret = FUNC6(dev, chan, true);
		if (ret < 0)
			return ret;
		break;
	case INSN_CONFIG_DISARM:
		ret = FUNC6(dev, chan, false);
		if (ret < 0)
			return ret;
		break;
	case INSN_CONFIG_PWM_OUTPUT:
		ret = FUNC6(dev, chan, false);
		if (ret < 0)
			return ret;

		hi_div = FUNC7(data[1], data[2]);
		lo_div = FUNC7(data[3], data[4]);
		if (hi_div < 0 || lo_div < 0)
			return -EINVAL;
		if ((hi_div * PCI1760_PWM_TIMEBASE) != data[2] ||
		    (lo_div * PCI1760_PWM_TIMEBASE) != data[4]) {
			data[2] = hi_div * PCI1760_PWM_TIMEBASE;
			data[4] = lo_div * PCI1760_PWM_TIMEBASE;
			return -EAGAIN;
		}
		ret = FUNC5(dev, FUNC3(chan), hi_div);
		if (ret < 0)
			return ret;
		ret = FUNC5(dev, FUNC4(chan), lo_div);
		if (ret < 0)
			return ret;
		break;
	case INSN_CONFIG_GET_PWM_OUTPUT:
		hi_div = FUNC5(dev, PCI1760_CMD_GET_STATUS,
				     FUNC3(chan));
		lo_div = FUNC5(dev, PCI1760_CMD_GET_STATUS,
				     FUNC4(chan));
		if (hi_div < 0 || lo_div < 0)
			return -ETIMEDOUT;

		data[1] = hi_div * PCI1760_PWM_TIMEBASE;
		data[2] = lo_div * PCI1760_PWM_TIMEBASE;
		break;
	case INSN_CONFIG_GET_PWM_STATUS:
		ret = FUNC5(dev, PCI1760_CMD_GET_STATUS,
				  PCI1760_CMD_ENA_PWM);
		if (ret < 0)
			return ret;

		data[1] = (ret & FUNC0(chan)) ? 1 : 0;
		break;
	default:
		return -EINVAL;
	}

	return insn->n;
}