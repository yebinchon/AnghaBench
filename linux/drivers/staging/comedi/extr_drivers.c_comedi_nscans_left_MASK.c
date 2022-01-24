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
struct comedi_subdevice {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*) ; 
 unsigned int FUNC2 (struct comedi_subdevice*) ; 

unsigned int FUNC3(struct comedi_subdevice *s,
				unsigned int nscans)
{
	if (nscans == 0) {
		unsigned int nbytes = FUNC1(s);

		nscans = nbytes / FUNC2(s);
	}
	return FUNC0(s, nscans);
}