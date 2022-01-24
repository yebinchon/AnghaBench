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
struct pcidas64_private {scalar_t__ plx9080_iobase; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct pcidas64_private* private; } ;

/* Variables and functions */
 int PLX_DMACSR_CLEARINTR ; 
 int PLX_DMACSR_ENABLE ; 
 int PLX_DMACSR_START ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct comedi_device *dev,
				  unsigned int channel)
{
	struct pcidas64_private *devpriv = dev->private;
	unsigned long flags;

	/* spinlock for plx dma control/status reg */
	FUNC1(&dev->spinlock, flags);
	FUNC3(PLX_DMACSR_ENABLE | PLX_DMACSR_START | PLX_DMACSR_CLEARINTR,
	       devpriv->plx9080_iobase + FUNC0(channel));
	FUNC2(&dev->spinlock, flags);
}