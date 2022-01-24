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
struct ssb_pcicore {scalar_t__ hostmode; struct ssb_device* dev; } ;
struct ssb_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssb_pcicore*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_pcicore*) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_pcicore*) ; 

void FUNC5(struct ssb_pcicore *pc)
{
	struct ssb_device *dev = pc->dev;

	if (!dev)
		return;
	if (!FUNC2(dev))
		FUNC1(dev, 0);

#ifdef CONFIG_SSB_PCICORE_HOSTMODE
	pc->hostmode = pcicore_is_in_hostmode(pc);
	if (pc->hostmode)
		ssb_pcicore_init_hostmode(pc);
#endif /* CONFIG_SSB_PCICORE_HOSTMODE */
	if (!pc->hostmode)
		FUNC3(pc);
}