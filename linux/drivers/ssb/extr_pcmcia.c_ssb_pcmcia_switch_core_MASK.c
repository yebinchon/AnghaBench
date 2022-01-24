#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  coreid; } ;
struct ssb_device {int /*<<< orphan*/  core_index; TYPE_1__ id; } ;
struct ssb_bus {struct ssb_device* mapped_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssb_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus, struct ssb_device *dev)
{
	int err;

#if SSB_VERBOSE_PCMCIACORESWITCH_DEBUG
	pr_info("Switching to %s core, index %d\n",
		ssb_core_name(dev->id.coreid), dev->core_index);
#endif

	err = FUNC2(bus, dev->core_index);
	if (!err)
		bus->mapped_device = dev;

	return err;
}