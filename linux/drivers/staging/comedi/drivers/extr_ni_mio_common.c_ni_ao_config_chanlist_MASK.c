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
struct ni_private {scalar_t__ is_m_series; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int FUNC0 (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int,int) ; 
 int FUNC1 (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				 struct comedi_subdevice *s,
				 unsigned int chanspec[], unsigned int n_chans,
				 int timed)
{
	struct ni_private *devpriv = dev->private;

	if (devpriv->is_m_series)
		return FUNC0(dev, s, chanspec, n_chans,
						      timed);
	else
		return FUNC1(dev, s, chanspec, n_chans);
}