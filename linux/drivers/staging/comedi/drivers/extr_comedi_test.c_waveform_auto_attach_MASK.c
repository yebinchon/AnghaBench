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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int set_amplitude ; 
 int set_period ; 
 int FUNC0 (struct comedi_device*,int,int) ; 

__attribute__((used)) static int FUNC1(struct comedi_device *dev,
				unsigned long context_unused)
{
	int amplitude = set_amplitude;
	int period = set_period;

	/* set default amplitude and period */
	if (!amplitude)
		amplitude = 1000000;	/* 1 volt */
	if (!period)
		period = 100000;	/* 0.1 sec */

	return FUNC0(dev, amplitude, period);
}