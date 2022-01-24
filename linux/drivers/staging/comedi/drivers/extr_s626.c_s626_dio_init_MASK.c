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
typedef  scalar_t__ u16 ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S626_DIO_BANKS ; 
 int /*<<< orphan*/  S626_LP_MISC1 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int S626_MISC1_NOEDCAP ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	u16 group;

	/* Prepare to treat writes to WRCapSel as capture disables. */
	FUNC4(dev, S626_LP_MISC1, S626_MISC1_NOEDCAP);

	/* For each group of sixteen channels ... */
	for (group = 0; group < S626_DIO_BANKS; group++) {
		/* Disable all interrupts */
		FUNC4(dev, FUNC3(group), 0);
		/* Disable all event captures */
		FUNC4(dev, FUNC0(group), 0xffff);
		/* Init all DIOs to default edge polarity */
		FUNC4(dev, FUNC2(group), 0);
		/* Program all outputs to inactive state */
		FUNC4(dev, FUNC1(group), 0);
	}
}