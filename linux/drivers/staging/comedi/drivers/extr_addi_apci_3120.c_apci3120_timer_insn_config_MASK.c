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
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int ctrl; unsigned int mode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ APCI3120_MODE_REG ; 
 unsigned int APCI3120_MODE_TIMER2_AS_COUNTER ; 
 unsigned int APCI3120_MODE_TIMER2_AS_MASK ; 
 unsigned int APCI3120_MODE_TIMER2_AS_TIMER ; 
 unsigned int APCI3120_MODE_TIMER2_AS_WDOG ; 
 scalar_t__ APCI3120_STATUS_REG ; 
 unsigned int APCI3120_STATUS_TIMER2_INT ; 
 unsigned int APCI3120_TIMER_MODE0 ; 
 unsigned int APCI3120_TIMER_MODE2 ; 
 unsigned int APCI3120_TIMER_MODE4 ; 
 unsigned int APCI3120_TIMER_MODE5 ; 
 int /*<<< orphan*/  CMDF_ROUND_DOWN ; 
 unsigned int COMEDI_COUNTER_ARMED ; 
 unsigned int COMEDI_COUNTER_COUNTING ; 
 unsigned int COMEDI_COUNTER_TERMINAL_COUNT ; 
 int EINVAL ; 
#define  I8254_MODE0 135 
#define  I8254_MODE2 134 
#define  I8254_MODE4 133 
#define  I8254_MODE5 132 
#define  INSN_CONFIG_ARM 131 
#define  INSN_CONFIG_DISARM 130 
#define  INSN_CONFIG_GET_COUNTER_STATUS 129 
#define  INSN_CONFIG_SET_COUNTER_MODE 128 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 unsigned int FUNC2 (struct comedi_device*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,unsigned int) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
				      struct comedi_subdevice *s,
				      struct comedi_insn *insn,
				      unsigned int *data)
{
	struct apci3120_private *devpriv = dev->private;
	unsigned int divisor;
	unsigned int status;
	unsigned int mode;
	unsigned int timer_mode;

	switch (data[0]) {
	case INSN_CONFIG_ARM:
		FUNC1(dev);
		divisor = FUNC2(dev, 2, data[1],
					       CMDF_ROUND_DOWN);
		FUNC5(dev, 2, divisor);
		FUNC3(dev, 2, true);
		break;

	case INSN_CONFIG_DISARM:
		FUNC3(dev, 2, false);
		FUNC1(dev);
		break;

	case INSN_CONFIG_GET_COUNTER_STATUS:
		data[1] = 0;
		data[2] = COMEDI_COUNTER_ARMED | COMEDI_COUNTER_COUNTING |
			  COMEDI_COUNTER_TERMINAL_COUNT;

		if (devpriv->ctrl & FUNC0(2)) {
			data[1] |= COMEDI_COUNTER_ARMED;
			data[1] |= COMEDI_COUNTER_COUNTING;
		}
		status = FUNC6(dev->iobase + APCI3120_STATUS_REG);
		if (status & APCI3120_STATUS_TIMER2_INT) {
			data[1] &= ~COMEDI_COUNTER_COUNTING;
			data[1] |= COMEDI_COUNTER_TERMINAL_COUNT;
		}
		break;

	case INSN_CONFIG_SET_COUNTER_MODE:
		switch (data[1]) {
		case I8254_MODE0:
			mode = APCI3120_MODE_TIMER2_AS_COUNTER;
			timer_mode = APCI3120_TIMER_MODE0;
			break;
		case I8254_MODE2:
			mode = APCI3120_MODE_TIMER2_AS_TIMER;
			timer_mode = APCI3120_TIMER_MODE2;
			break;
		case I8254_MODE4:
			mode = APCI3120_MODE_TIMER2_AS_TIMER;
			timer_mode = APCI3120_TIMER_MODE4;
			break;
		case I8254_MODE5:
			mode = APCI3120_MODE_TIMER2_AS_WDOG;
			timer_mode = APCI3120_TIMER_MODE5;
			break;
		default:
			return -EINVAL;
		}
		FUNC3(dev, 2, false);
		FUNC1(dev);
		FUNC4(dev, 2, timer_mode);
		devpriv->mode &= ~APCI3120_MODE_TIMER2_AS_MASK;
		devpriv->mode |= mode;
		FUNC7(devpriv->mode, dev->iobase + APCI3120_MODE_REG);
		break;

	default:
		return -EINVAL;
	}

	return insn->n;
}