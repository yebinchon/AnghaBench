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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int /*<<< orphan*/  bar_lock; scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ssb_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ssb_device *dev, u16 offset, u32 value)
{
	struct ssb_bus *bus = dev->bus;
	unsigned long flags;
	int err;

	FUNC2(&bus->bar_lock, flags);
	err = FUNC1(dev, &offset);
	if (FUNC0(!err)) {
		FUNC4((value & 0x0000FFFF), bus->mmio + offset);
		FUNC4(((value & 0xFFFF0000) >> 16), bus->mmio + offset + 2);
	}
	FUNC3(&bus->bar_lock, flags);
}