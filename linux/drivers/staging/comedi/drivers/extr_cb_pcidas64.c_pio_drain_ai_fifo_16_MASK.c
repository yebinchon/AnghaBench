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
typedef  int u16 ;
struct pcidas64_private {int ai_fifo_segment_length; scalar_t__ main_iobase; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct comedi_subdevice* read_subdev; struct pcidas64_private* private; } ;

/* Variables and functions */
 scalar_t__ ADC_FIFO_REG ; 
 scalar_t__ ADC_READ_PNTR_REG ; 
 scalar_t__ ADC_WRITE_PNTR_REG ; 
 scalar_t__ PREPOST_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_subdevice*,unsigned short*,int) ; 
 int FUNC3 (struct comedi_subdevice*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev)
{
	struct pcidas64_private *devpriv = dev->private;
	struct comedi_subdevice *s = dev->read_subdev;
	unsigned int i;
	u16 prepost_bits;
	int read_segment, read_index, write_segment, write_index;
	int num_samples;

	do {
		/* get least significant 15 bits */
		read_index = FUNC5(devpriv->main_iobase + ADC_READ_PNTR_REG) &
			     0x7fff;
		write_index = FUNC5(devpriv->main_iobase + ADC_WRITE_PNTR_REG) &
			      0x7fff;
		/*
		 * Get most significant bits (grey code).
		 * Different boards use different code so use a scheme
		 * that doesn't depend on encoding.  This read must
		 * occur after reading least significant 15 bits to avoid race
		 * with fifo switching to next segment.
		 */
		prepost_bits = FUNC5(devpriv->main_iobase + PREPOST_REG);

		/*
		 * if read and write pointers are not on the same fifo segment,
		 * read to the end of the read segment
		 */
		read_segment = FUNC0(prepost_bits);
		write_segment = FUNC1(prepost_bits);

		if (read_segment != write_segment)
			num_samples =
				devpriv->ai_fifo_segment_length - read_index;
		else
			num_samples = write_index - read_index;
		if (num_samples < 0) {
			FUNC4(dev->class_dev,
				"cb_pcidas64: bug! num_samples < 0\n");
			break;
		}

		num_samples = FUNC3(s, num_samples);
		if (num_samples == 0)
			break;

		for (i = 0; i < num_samples; i++) {
			unsigned short val;

			val = FUNC5(devpriv->main_iobase + ADC_FIFO_REG);
			FUNC2(s, &val, 1);
		}

	} while (read_segment != write_segment);
}