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
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  INSN_CONFIG_ALT_SOURCE 130 
#define  INSN_CONFIG_BLOCK_SIZE 129 
#define  INSN_CONFIG_TIMER_1 128 
 int FUNC0 (struct comedi_device*,unsigned int*) ; 
 int FUNC1 (struct comedi_device*,unsigned int*) ; 
 int FUNC2 (struct comedi_device*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	int id = data[0];

	switch (id) {
	case INSN_CONFIG_ALT_SOURCE:
		return FUNC1(dev, data);
	case INSN_CONFIG_BLOCK_SIZE:
		return FUNC0(dev, data);
	case INSN_CONFIG_TIMER_1:
		return FUNC2(dev, data);
	default:
		return -EINVAL;
	}
	return -EINVAL;
}