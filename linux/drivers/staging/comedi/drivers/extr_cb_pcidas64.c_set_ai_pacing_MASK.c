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
typedef  int u32 ;
struct pcidas64_private {scalar_t__ main_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADC_DELAY_INTERVAL_LOWER_REG ; 
 scalar_t__ ADC_DELAY_INTERVAL_UPPER_REG ; 
 scalar_t__ ADC_SAMPLE_INTERVAL_LOWER_REG ; 
 scalar_t__ ADC_SAMPLE_INTERVAL_UPPER_REG ; 
 scalar_t__ LAYOUT_4020 ; 
 int FUNC0 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC1 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC2 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev, struct comedi_cmd *cmd)
{
	const struct pcidas64_board *board = dev->board_ptr;
	struct pcidas64_private *devpriv = dev->private;
	u32 convert_counter = 0, scan_counter = 0;

	FUNC3(dev, cmd);

	FUNC4(dev, cmd);

	if (board->layout == LAYOUT_4020) {
		convert_counter = FUNC0(dev, cmd);
	} else {
		convert_counter = FUNC1(dev, cmd);
		scan_counter = FUNC2(dev, cmd);
	}

	/* load lower 16 bits of convert interval */
	FUNC5(convert_counter & 0xffff,
	       devpriv->main_iobase + ADC_SAMPLE_INTERVAL_LOWER_REG);
	/* load upper 8 bits of convert interval */
	FUNC5((convert_counter >> 16) & 0xff,
	       devpriv->main_iobase + ADC_SAMPLE_INTERVAL_UPPER_REG);
	/* load lower 16 bits of scan delay */
	FUNC5(scan_counter & 0xffff,
	       devpriv->main_iobase + ADC_DELAY_INTERVAL_LOWER_REG);
	/* load upper 8 bits of scan delay */
	FUNC5((scan_counter >> 16) & 0xff,
	       devpriv->main_iobase + ADC_DELAY_INTERVAL_UPPER_REG);
}