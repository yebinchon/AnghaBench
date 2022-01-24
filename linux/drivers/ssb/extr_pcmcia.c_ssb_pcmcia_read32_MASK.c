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
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct ssb_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC5(struct ssb_device *dev, u16 offset)
{
	struct ssb_bus *bus = dev->bus;
	unsigned long flags;
	int err;
	u32 lo = 0xFFFFFFFF, hi = 0xFFFFFFFF;

	FUNC3(&bus->bar_lock, flags);
	err = FUNC2(dev, &offset);
	if (FUNC0(!err)) {
		lo = FUNC1(bus->mmio + offset);
		hi = FUNC1(bus->mmio + offset + 2);
	}
	FUNC4(&bus->bar_lock, flags);

	return (lo | (hi << 16));
}