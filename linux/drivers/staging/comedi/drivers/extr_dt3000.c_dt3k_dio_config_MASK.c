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
 int /*<<< orphan*/  DPR_CMD_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DPR_SUBSYS ; 
 int DPR_SUBSYS_DOUT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, int bits)
{
	/* XXX */
	FUNC2(DPR_SUBSYS_DOUT, dev->mmio + DPR_SUBSYS);

	FUNC2(bits, dev->mmio + FUNC0(0));

	/* XXX write 0 to DPR_PARAMS(1) and DPR_PARAMS(2) ? */

	FUNC1(dev, DPR_CMD_CONFIG);
}