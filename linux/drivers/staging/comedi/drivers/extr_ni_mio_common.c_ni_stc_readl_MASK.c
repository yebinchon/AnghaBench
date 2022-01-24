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
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_device*,int) ; 
 unsigned int FUNC1 (struct comedi_device*,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct comedi_device *dev, int reg)
{
	struct ni_private *devpriv = dev->private;
	unsigned int val;

	if (devpriv->is_m_series) {
		val = FUNC0(dev, reg);
	} else {
		val = FUNC1(dev, reg) << 16;
		val |= FUNC1(dev, reg + 1);
	}
	return val;
}