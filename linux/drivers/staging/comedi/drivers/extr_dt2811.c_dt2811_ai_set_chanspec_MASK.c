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
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ DT2811_ADGCR_REG ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				   unsigned int chanspec)
{
	unsigned int chan = FUNC0(chanspec);
	unsigned int range = FUNC1(chanspec);

	FUNC4(FUNC2(chan) | FUNC3(range),
	     dev->iobase + DT2811_ADGCR_REG);
}