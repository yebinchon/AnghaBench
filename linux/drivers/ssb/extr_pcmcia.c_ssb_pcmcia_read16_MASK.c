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
typedef  int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int mmio; int /*<<< orphan*/  bar_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ssb_device*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u16 FUNC5(struct ssb_device *dev, u16 offset)
{
	struct ssb_bus *bus = dev->bus;
	unsigned long flags;
	int err;
	u16 value = 0xFFFF;

	FUNC3(&bus->bar_lock, flags);
	err = FUNC2(dev, &offset);
	if (FUNC0(!err))
		value = FUNC1(bus->mmio + offset);
	FUNC4(&bus->bar_lock, flags);

	return value;
}