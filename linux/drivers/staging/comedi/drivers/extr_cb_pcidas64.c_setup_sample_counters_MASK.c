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
struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int stop_arg; } ;

/* Variables and functions */
 scalar_t__ ADC_COUNT_LOWER_REG ; 
 scalar_t__ ADC_COUNT_UPPER_REG ; 
 scalar_t__ FUNC0 (struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				  struct comedi_cmd *cmd)
{
	struct pcidas64_private *devpriv = dev->private;

	/* load hardware conversion counter */
	if (FUNC0(cmd)) {
		FUNC1(cmd->stop_arg & 0xffff,
		       devpriv->main_iobase + ADC_COUNT_LOWER_REG);
		FUNC1((cmd->stop_arg >> 16) & 0xff,
		       devpriv->main_iobase + ADC_COUNT_UPPER_REG);
	} else {
		FUNC1(1, devpriv->main_iobase + ADC_COUNT_LOWER_REG);
	}
}