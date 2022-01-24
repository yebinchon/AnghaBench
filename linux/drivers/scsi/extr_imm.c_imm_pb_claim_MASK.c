#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int wanted; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int /*<<< orphan*/  arbitration_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(imm_struct *dev)
{
	unsigned long flags;
	int res = 1;
	FUNC2(&arbitration_lock, flags);
	if (FUNC1(dev->dev) == 0) {
		FUNC0(dev);
		res = 0;
	}
	dev->wanted = res;
	FUNC3(&arbitration_lock, flags);
	return res;
}