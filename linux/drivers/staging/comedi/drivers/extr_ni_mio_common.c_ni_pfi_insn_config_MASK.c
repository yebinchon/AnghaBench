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
#define  COMEDI_INPUT 133 
#define  COMEDI_OUTPUT 132 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  INSN_CONFIG_DIO_QUERY 131 
#define  INSN_CONFIG_FILTER 130 
#define  INSN_CONFIG_GET_ROUTING 129 
#define  INSN_CONFIG_SET_ROUTING 128 
 int FUNC1 (struct comedi_device*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_device*,unsigned int) ; 
 unsigned int FUNC3 (struct comedi_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int,unsigned int) ; 
 int FUNC5 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      struct comedi_insn *insn,
			      unsigned int *data)
{
	unsigned int chan;

	if (insn->n < 1)
		return -EINVAL;

	chan = FUNC0(insn->chanspec);

	switch (data[0]) {
	case COMEDI_OUTPUT:
	case COMEDI_INPUT:
		FUNC4(dev, chan, data[0]);
		break;
	case INSN_CONFIG_DIO_QUERY:
		data[1] = FUNC2(dev, chan);
		break;
	case INSN_CONFIG_SET_ROUTING:
		return FUNC5(dev, chan, data[1]);
	case INSN_CONFIG_GET_ROUTING:
		data[1] = FUNC3(dev, chan);
		break;
	case INSN_CONFIG_FILTER:
		return FUNC1(dev, chan, data[1]);
	default:
		return -EINVAL;
	}
	return 0;
}