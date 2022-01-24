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
 unsigned int AREF_COMMON ; 
 unsigned int AREF_DIFF ; 
 unsigned char CMEN ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned char SD ; 
 unsigned char UB ; 
 unsigned char UQEN ; 
 scalar_t__ FUNC2 (struct comedi_subdevice*,unsigned int) ; 

__attribute__((used)) static unsigned char FUNC3(struct comedi_subdevice *s,
					      unsigned int chanspec)
{
	unsigned int range = FUNC1(chanspec);
	unsigned int aref = FUNC0(chanspec);
	unsigned char bits;

	bits = UQEN;
	if (aref != AREF_DIFF)
		bits |= SD;
	if (aref == AREF_COMMON)
		bits |= CMEN;
	if (FUNC2(s, range))
		bits |= UB;

	return bits;
}