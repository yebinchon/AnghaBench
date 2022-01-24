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
 int /*<<< orphan*/  DPR_CMD_WRITESINGLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DPR_SUBSYS ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int subsys,
			     unsigned int chan, unsigned int data)
{
	FUNC2(subsys, dev->mmio + DPR_SUBSYS);

	FUNC2(chan, dev->mmio + FUNC0(0));
	FUNC2(0, dev->mmio + FUNC0(1));
	FUNC2(data, dev->mmio + FUNC0(2));

	FUNC1(dev, DPR_CMD_WRITESINGLE);
}