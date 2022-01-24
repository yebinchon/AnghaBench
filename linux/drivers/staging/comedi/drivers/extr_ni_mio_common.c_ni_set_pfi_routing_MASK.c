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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct comedi_device*,unsigned int,unsigned int) ; 
 int FUNC2 (struct comedi_device*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			      unsigned int chan, unsigned int source)
{
	struct ni_private *devpriv = dev->private;

	if (chan >= FUNC0(0)) {
		/* allow new and old names of pfi channels to work. */
		chan -= FUNC0(0);
	}
	return (devpriv->is_m_series)
			? FUNC1(dev, chan, source)
			: FUNC2(dev, chan, source);
}