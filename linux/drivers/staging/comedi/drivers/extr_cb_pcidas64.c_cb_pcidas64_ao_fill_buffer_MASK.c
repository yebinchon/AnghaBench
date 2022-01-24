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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct comedi_subdevice*,unsigned short*,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct comedi_device *dev,
					       struct comedi_subdevice *s,
					       unsigned short *dest,
					       unsigned int max_bytes)
{
	unsigned int nsamples = FUNC1(s, max_bytes);
	unsigned int actual_bytes;

	nsamples = FUNC2(s, nsamples);
	actual_bytes = FUNC0(s, dest, nsamples);

	return FUNC1(s, actual_bytes);
}