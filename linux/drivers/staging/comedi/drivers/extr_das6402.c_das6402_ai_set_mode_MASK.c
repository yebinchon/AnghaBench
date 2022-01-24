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
 unsigned int AREF_GROUND ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int DAS6402_MODE_SE ; 
 unsigned int DAS6402_MODE_UNI ; 
 scalar_t__ FUNC3 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				struct comedi_subdevice *s,
				unsigned int chanspec,
				unsigned int mode)
{
	unsigned int range = FUNC1(chanspec);
	unsigned int aref = FUNC0(chanspec);

	mode |= FUNC2(range);
	if (aref == AREF_GROUND)
		mode |= DAS6402_MODE_SE;
	if (FUNC3(s, range))
		mode |= DAS6402_MODE_UNI;

	FUNC4(dev, mode);
}