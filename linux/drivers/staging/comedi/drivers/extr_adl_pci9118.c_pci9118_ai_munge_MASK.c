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
struct pci9118_private {scalar_t__ usedma; } ;
struct comedi_subdevice {int maxdata; } ;
struct comedi_device {struct pci9118_private* private; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
			     struct comedi_subdevice *s, void *data,
			     unsigned int num_bytes,
			     unsigned int start_chan_index)
{
	struct pci9118_private *devpriv = dev->private;
	unsigned short *array = data;
	unsigned int num_samples = FUNC1(s, num_bytes);
	unsigned int i;
	__be16 *barray = data;

	for (i = 0; i < num_samples; i++) {
		if (devpriv->usedma)
			array[i] = FUNC0(barray[i]);
		if (s->maxdata == 0xffff)
			array[i] ^= 0x8000;
		else
			array[i] = (array[i] >> 4) & 0x0fff;
	}
}