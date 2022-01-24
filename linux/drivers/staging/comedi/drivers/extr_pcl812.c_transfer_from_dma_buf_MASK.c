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
 int /*<<< orphan*/  FUNC0 (struct comedi_subdevice*,unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  unsigned short *ptr,
				  unsigned int bufptr, unsigned int len)
{
	unsigned int i;
	unsigned short val;

	for (i = len; i; i--) {
		val = ptr[bufptr++];
		FUNC0(s, &val, 1);

		if (!FUNC1(dev, s))
			break;
	}
}