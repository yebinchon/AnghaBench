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
 int /*<<< orphan*/  COMEDI_INPUT ; 
 int /*<<< orphan*/  COMEDI_OUTPUT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_INPUT 133 
#define  INSN_CONFIG_DIO_OUTPUT 132 
#define  INSN_CONFIG_DIO_QUERY 131 
#define  INSN_CONFIG_FILTER 130 
#define  INSN_CONFIG_GET_ROUTING 129 
#define  INSN_CONFIG_SET_ROUTING 128 
 unsigned int FUNC1 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,unsigned int) ; 
 int FUNC5 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn,
				   unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	int ret;

	switch (data[0]) {
	case INSN_CONFIG_DIO_OUTPUT:
		FUNC3(dev, chan, COMEDI_OUTPUT);
		break;

	case INSN_CONFIG_DIO_INPUT:
		FUNC3(dev, chan, COMEDI_INPUT);
		break;

	case INSN_CONFIG_DIO_QUERY:
		data[1] = FUNC1(dev, chan);
		break;

	case INSN_CONFIG_SET_ROUTING:
		ret = FUNC5(dev, chan, data[1]);
		if (ret)
			return ret;
		break;

	case INSN_CONFIG_GET_ROUTING:
		data[1] = FUNC2(dev, chan);
		break;

	case INSN_CONFIG_FILTER:
		FUNC4(dev, chan, data[1]);
		break;

	default:
		return -EINVAL;
	}

	return insn->n;
}