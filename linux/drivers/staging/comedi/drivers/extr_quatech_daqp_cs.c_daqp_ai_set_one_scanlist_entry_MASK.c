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
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int DAQP_SCANLIST_DIFFERENTIAL ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ DAQP_SCANLIST_REG ; 
 unsigned int DAQP_SCANLIST_START ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
					   unsigned int chanspec,
					   int start)
{
	unsigned int chan = FUNC1(chanspec);
	unsigned int range = FUNC2(chanspec);
	unsigned int aref = FUNC0(chanspec);
	unsigned int val;

	val = FUNC3(chan) | FUNC4(range);

	if (aref == AREF_DIFF)
		val |= DAQP_SCANLIST_DIFFERENTIAL;

	if (start)
		val |= DAQP_SCANLIST_START;

	FUNC5(val & 0xff, dev->iobase + DAQP_SCANLIST_REG);
	FUNC5((val >> 8) & 0xff, dev->iobase + DAQP_SCANLIST_REG);
}