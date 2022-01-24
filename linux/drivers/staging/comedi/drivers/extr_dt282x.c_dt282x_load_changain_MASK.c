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
struct dt282x_private {int adcsr; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ DT2821_ADCSR_REG ; 
 int DT2821_CHANCSR_LLE ; 
 int FUNC4 (int) ; 
 scalar_t__ DT2821_CHANCSR_REG ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev, int n,
				 unsigned int *chanlist)
{
	struct dt282x_private *devpriv = dev->private;
	int i;

	FUNC5(DT2821_CHANCSR_LLE | FUNC4(n),
	     dev->iobase + DT2821_CHANCSR_REG);
	for (i = 0; i < n; i++) {
		unsigned int chan = FUNC0(chanlist[i]);
		unsigned int range = FUNC1(chanlist[i]);

		FUNC5(devpriv->adcsr |
		     FUNC3(range) |
		     FUNC2(chan),
		     dev->iobase + DT2821_ADCSR_REG);
	}
	FUNC5(FUNC4(n), dev->iobase + DT2821_CHANCSR_REG);
}