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
struct ni_private {int /*<<< orphan*/  routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,struct comedi_device*) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(int brd, struct comedi_device *dev)
{
	struct ni_private *devpriv = dev->private;
	int brd_index = brd;
	int reg;

	if (brd >= FUNC0(0))
		brd_index = brd - FUNC0(0);
	else
		brd = FUNC0(brd);
	/*
	 * And now:
	 * brd : device-global name
	 * brd_index : index number of RTSI_BRD mux
	 */

	reg = FUNC1(brd_index, dev);

	return FUNC2(reg, brd, &devpriv->routing_tables);
}