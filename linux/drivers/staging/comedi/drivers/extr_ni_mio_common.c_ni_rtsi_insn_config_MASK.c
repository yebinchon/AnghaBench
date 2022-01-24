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
struct ni_private {unsigned int clock_source; unsigned int clock_ns; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int /*<<< orphan*/  chanspec; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
#define  COMEDI_INPUT 134 
#define  COMEDI_OUTPUT 133 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_QUERY 132 
#define  INSN_CONFIG_GET_CLOCK_SRC 131 
#define  INSN_CONFIG_GET_ROUTING 130 
#define  INSN_CONFIG_SET_CLOCK_SRC 129 
#define  INSN_CONFIG_SET_ROUTING 128 
 int FUNC1 (struct comedi_device*,unsigned int) ; 
 int FUNC2 (struct comedi_device*,unsigned int) ; 
 int FUNC3 (struct comedi_device*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,unsigned int) ; 
 int FUNC5 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn,
			       unsigned int *data)
{
	struct ni_private *devpriv = dev->private;
	unsigned int chan = FUNC0(insn->chanspec);

	switch (data[0]) {
	case COMEDI_OUTPUT:
	case COMEDI_INPUT:
		FUNC4(dev, chan, data[0]);
		break;
	case INSN_CONFIG_DIO_QUERY: {
		int ret = FUNC1(dev, chan);

		if (ret < 0)
			return ret;
		data[1] = ret;
		return 2;
	}
	case INSN_CONFIG_SET_CLOCK_SRC:
		return FUNC3(dev, data[1], data[2]);
	case INSN_CONFIG_GET_CLOCK_SRC:
		data[1] = devpriv->clock_source;
		data[2] = devpriv->clock_ns;
		return 3;
	case INSN_CONFIG_SET_ROUTING:
		return FUNC5(dev, chan, data[1]);
	case INSN_CONFIG_GET_ROUTING: {
		int ret = FUNC2(dev, chan);

		if (ret < 0)
			return ret;
		data[1] = ret;
		return 2;
	}
	default:
		return -EINVAL;
	}
	return 1;
}