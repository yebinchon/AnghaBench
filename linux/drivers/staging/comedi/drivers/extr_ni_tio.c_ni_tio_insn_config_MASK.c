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
struct ni_gpct {unsigned int counter_index; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int COMEDI_COUNTER_ARMED ; 
 unsigned int COMEDI_COUNTER_COUNTING ; 
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
#define  INSN_CONFIG_ARM 137 
#define  INSN_CONFIG_DISARM 136 
#define  INSN_CONFIG_GET_CLOCK_SRC 135 
#define  INSN_CONFIG_GET_COUNTER_STATUS 134 
#define  INSN_CONFIG_GET_GATE_SRC 133 
#define  INSN_CONFIG_RESET 132 
#define  INSN_CONFIG_SET_CLOCK_SRC 131 
#define  INSN_CONFIG_SET_COUNTER_MODE 130 
#define  INSN_CONFIG_SET_GATE_SRC 129 
#define  INSN_CONFIG_SET_OTHER_SRC 128 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (struct ni_gpct*,int,unsigned int) ; 
 int FUNC4 (struct ni_gpct*,unsigned int*,unsigned int*) ; 
 int FUNC5 (struct ni_gpct*,unsigned int,unsigned int*) ; 
 unsigned int FUNC6 (struct ni_gpct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ni_gpct*) ; 
 int FUNC8 (struct ni_gpct*,unsigned int,unsigned int) ; 
 int FUNC9 (struct ni_gpct*,unsigned int) ; 
 int FUNC10 (struct ni_gpct*,unsigned int,unsigned int) ; 
 int FUNC11 (struct ni_gpct*,unsigned int,unsigned int) ; 

int FUNC12(struct comedi_device *dev,
		       struct comedi_subdevice *s,
		       struct comedi_insn *insn,
		       unsigned int *data)
{
	struct ni_gpct *counter = s->private;
	unsigned int cidx = counter->counter_index;
	unsigned int status;
	int ret = 0;

	switch (data[0]) {
	case INSN_CONFIG_SET_COUNTER_MODE:
		ret = FUNC9(counter, data[1]);
		break;
	case INSN_CONFIG_ARM:
		ret = FUNC3(counter, true, data[1]);
		break;
	case INSN_CONFIG_DISARM:
		ret = FUNC3(counter, false, 0);
		break;
	case INSN_CONFIG_GET_COUNTER_STATUS:
		data[1] = 0;
		status = FUNC6(counter, FUNC2(cidx));
		if (status & FUNC0(cidx)) {
			data[1] |= COMEDI_COUNTER_ARMED;
			if (status & FUNC1(cidx))
				data[1] |= COMEDI_COUNTER_COUNTING;
		}
		data[2] = COMEDI_COUNTER_ARMED | COMEDI_COUNTER_COUNTING;
		break;
	case INSN_CONFIG_SET_CLOCK_SRC:
		ret = FUNC8(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_GET_CLOCK_SRC:
		ret = FUNC4(counter, &data[1], &data[2]);
		break;
	case INSN_CONFIG_SET_GATE_SRC:
		ret = FUNC10(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_GET_GATE_SRC:
		ret = FUNC5(counter, data[1], &data[2]);
		break;
	case INSN_CONFIG_SET_OTHER_SRC:
		ret = FUNC11(counter, data[1], data[2]);
		break;
	case INSN_CONFIG_RESET:
		FUNC7(counter);
		break;
	default:
		return -EINVAL;
	}
	return ret ? ret : insn->n;
}