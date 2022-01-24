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
typedef  int /*<<< orphan*/  u16 ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 unsigned int S626_CRBMSK_CLKENAB_A ; 
 unsigned int S626_CRBMSK_CLKENAB_B ; 
 unsigned int S626_CRBMSK_INTCTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			    unsigned int chan, u16 enab)
{
	unsigned int mask = S626_CRBMSK_INTCTRL;
	unsigned int set;

	if (chan < 3) {
		mask |= S626_CRBMSK_CLKENAB_A;
		set = FUNC1(enab);
	} else {
		mask |= S626_CRBMSK_CLKENAB_B;
		set = FUNC2(enab);
	}
	FUNC3(dev, FUNC0(chan), ~mask, set);
}