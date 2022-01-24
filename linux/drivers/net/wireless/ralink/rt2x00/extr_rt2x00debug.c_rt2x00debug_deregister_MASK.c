#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct rt2x00debug_intf* data; } ;
struct TYPE_3__ {struct rt2x00debug_intf* data; } ;
struct rt2x00debug_intf {TYPE_2__ driver_blob; TYPE_1__ chipset_blob; int /*<<< orphan*/  driver_folder; int /*<<< orphan*/  frame_dump_skbqueue; } ;
struct rt2x00_dev {struct rt2x00debug_intf* debugfs_intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00debug_intf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	struct rt2x00debug_intf *intf = rt2x00dev->debugfs_intf;

	if (FUNC3(!intf))
		return;

	FUNC2(&intf->frame_dump_skbqueue);

	FUNC0(intf->driver_folder);
	FUNC1(intf->chipset_blob.data);
	FUNC1(intf->driver_blob.data);
	FUNC1(intf);

	rt2x00dev->debugfs_intf = NULL;
}