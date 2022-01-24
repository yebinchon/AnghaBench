#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci9111_private_data {unsigned short* ai_bounce_buffer; int scan_delay; scalar_t__ chunk_counter; unsigned int chunk_num_samples; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci9111_private_data* private; } ;
struct comedi_cmd {scalar_t__ chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ PCI9111_AI_FIFO_REG ; 
 int /*<<< orphan*/  PCI9111_FIFO_HALF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned short*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev,
					  struct comedi_subdevice *s)
{
	struct pci9111_private_data *devpriv = dev->private;
	struct comedi_cmd *cmd = &s->async->cmd;
	unsigned short *buf = devpriv->ai_bounce_buffer;
	unsigned int samples;

	samples = FUNC1(s, PCI9111_FIFO_HALF_SIZE);
	FUNC2(dev->iobase + PCI9111_AI_FIFO_REG, buf, samples);

	if (devpriv->scan_delay < 1) {
		FUNC0(s, buf, samples);
	} else {
		unsigned int pos = 0;
		unsigned int to_read;

		while (pos < samples) {
			if (devpriv->chunk_counter < cmd->chanlist_len) {
				to_read = cmd->chanlist_len -
					  devpriv->chunk_counter;

				if (to_read > samples - pos)
					to_read = samples - pos;

				FUNC0(s, buf + pos, to_read);
			} else {
				to_read = devpriv->chunk_num_samples -
					  devpriv->chunk_counter;

				if (to_read > samples - pos)
					to_read = samples - pos;
			}

			pos += to_read;
			devpriv->chunk_counter += to_read;

			if (devpriv->chunk_counter >=
			    devpriv->chunk_num_samples)
				devpriv->chunk_counter = 0;
		}
	}
}