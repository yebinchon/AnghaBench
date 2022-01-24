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
struct labpc_private {int /*<<< orphan*/  (* write_byte ) (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ;} ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_device {struct labpc_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			   struct comedi_subdevice *s,
			   unsigned int chan, unsigned int val)
{
	struct labpc_private *devpriv = dev->private;

	devpriv->write_byte(dev, val & 0xff, FUNC0(chan));
	devpriv->write_byte(dev, (val >> 8) & 0xff, FUNC1(chan));

	s->readback[chan] = val;
}