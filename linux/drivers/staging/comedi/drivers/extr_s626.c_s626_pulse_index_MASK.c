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
 int S626_CRAMSK_INDXPOL_A ; 
 int S626_CRBMSK_INDXPOL_B ; 
 int S626_CRBMSK_INTCTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
			     unsigned int chan)
{
	if (chan < 3) {
		u16 cra;

		cra = FUNC2(dev, FUNC0(chan));

		/* Pulse index */
		FUNC3(dev, FUNC0(chan),
				(cra ^ S626_CRAMSK_INDXPOL_A));
		FUNC3(dev, FUNC0(chan), cra);
	} else {
		u16 crb;

		crb = FUNC2(dev, FUNC1(chan));
		crb &= ~S626_CRBMSK_INTCTRL;

		/* Pulse index */
		FUNC3(dev, FUNC1(chan),
				(crb ^ S626_CRBMSK_INDXPOL_B));
		FUNC3(dev, FUNC1(chan), crb);
	}
}