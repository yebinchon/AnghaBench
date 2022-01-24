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
struct ni_private {unsigned int clock_ns; unsigned int pwm_up_count; unsigned int pwm_down_count; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
#define  CMDF_ROUND_DOWN 132 
#define  CMDF_ROUND_NEAREST 131 
#define  CMDF_ROUND_UP 130 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int EAGAIN ; 
 int EINVAL ; 
#define  INSN_CONFIG_GET_PWM_OUTPUT 129 
#define  INSN_CONFIG_PWM_OUTPUT 128 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  NI_M_CAL_PWM_REG ; 
 int FUNC4 (struct comedi_device*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	struct ni_private *devpriv = dev->private;
	unsigned int up_count, down_count;

	switch (data[0]) {
	case INSN_CONFIG_PWM_OUTPUT:
		switch (data[1]) {
		case CMDF_ROUND_NEAREST:
			up_count = FUNC0(data[2],
						     devpriv->clock_ns);
			break;
		case CMDF_ROUND_DOWN:
			up_count = data[2] / devpriv->clock_ns;
			break;
		case CMDF_ROUND_UP:
			up_count =
			    FUNC1(data[2], devpriv->clock_ns);
			break;
		default:
			return -EINVAL;
		}
		switch (data[3]) {
		case CMDF_ROUND_NEAREST:
			down_count = FUNC0(data[4],
						       devpriv->clock_ns);
			break;
		case CMDF_ROUND_DOWN:
			down_count = data[4] / devpriv->clock_ns;
			break;
		case CMDF_ROUND_UP:
			down_count =
			    FUNC1(data[4], devpriv->clock_ns);
			break;
		default:
			return -EINVAL;
		}
		if (up_count * devpriv->clock_ns != data[2] ||
		    down_count * devpriv->clock_ns != data[4]) {
			data[2] = up_count * devpriv->clock_ns;
			data[4] = down_count * devpriv->clock_ns;
			return -EAGAIN;
		}
		FUNC5(dev, FUNC2(up_count) |
			       FUNC3(down_count),
			  NI_M_CAL_PWM_REG);
		devpriv->pwm_up_count = up_count;
		devpriv->pwm_down_count = down_count;
		return 5;
	case INSN_CONFIG_GET_PWM_OUTPUT:
		return FUNC4(dev, data);
	default:
		return -EINVAL;
	}
	return 0;
}