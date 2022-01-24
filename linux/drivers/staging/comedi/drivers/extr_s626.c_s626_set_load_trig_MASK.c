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
typedef  int u16 ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int S626_CRAMSK_LOADSRC_A ; 
 int S626_CRBMSK_INTCTRL ; 
 int S626_CRBMSK_LOADSRC_B ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
			       unsigned int chan, u16 trig)
{
	u16 reg;
	u16 mask;
	u16 set;

	if (chan < 3) {
		reg = FUNC0(chan);
		mask = S626_CRAMSK_LOADSRC_A;
		set = FUNC2(trig);
	} else {
		reg = FUNC1(chan);
		mask = S626_CRBMSK_LOADSRC_B | S626_CRBMSK_INTCTRL;
		set = FUNC3(trig);
	}
	FUNC4(dev, reg, ~mask, set);
}