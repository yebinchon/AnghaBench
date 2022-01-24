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
 int /*<<< orphan*/  DPR_CMD_READSINGLE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DPR_SUBSYS ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
				    unsigned int subsys, unsigned int chan,
				    unsigned int gain)
{
	FUNC3(subsys, dev->mmio + DPR_SUBSYS);

	FUNC3(chan, dev->mmio + FUNC0(0));
	FUNC3(gain, dev->mmio + FUNC0(1));

	FUNC1(dev, DPR_CMD_READSINGLE);

	return FUNC2(dev->mmio + FUNC0(2));
}