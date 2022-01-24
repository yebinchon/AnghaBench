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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				      unsigned int mask,
				      unsigned int rising,
				      unsigned int falling)
{
	unsigned int i;

	rising &= mask;
	falling &= mask;
	for (i = 0; i < 2; i++) {
		if (mask & 0xff) {
			if (~mask & 0xff) {
				/* preserve rising-edge detection channels */
				rising |= FUNC2(dev->mmio +
						FUNC1(i)) &
					  (~mask & 0xff);
				/* preserve falling-edge detection channels */
				falling |= FUNC2(dev->mmio +
						 FUNC0(i)) &
					   (~mask & 0xff);
			}
			/* update rising-edge detection channels */
			FUNC3(rising & 0xff,
			       dev->mmio + FUNC1(i));
			/* update falling-edge detection channels */
			FUNC3(falling & 0xff,
			       dev->mmio + FUNC0(i));
		}
		rising >>= 8;
		falling >>= 8;
		mask >>= 8;
	}
}