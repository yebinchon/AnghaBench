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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(struct comedi_device *dev,
				   unsigned int chan)
{
	unsigned int val;

	/* read the low word then high word */
	val = FUNC2(dev->iobase + FUNC0(chan)) & 0xffff;
	val |= (FUNC2(dev->iobase + FUNC1(chan)) & 0xff) << 16;

	return val;
}