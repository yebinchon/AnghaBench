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
 int /*<<< orphan*/  S626_CRBMSK_INTCTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev,
				 unsigned int chan)
{
	u16 set;

	set = FUNC1(1);
	if (chan < 3)
		set |= FUNC2(1);
	else
		set |= FUNC3(1);

	FUNC4(dev, FUNC0(chan), ~S626_CRBMSK_INTCTRL, set);
}