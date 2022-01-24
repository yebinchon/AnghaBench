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
struct tps6524x {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct tps6524x*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tps6524x *hw, int reg)
{
	int ret;

	FUNC1(&hw->lock);
	ret = FUNC0(hw, reg);
	FUNC2(&hw->lock);

	return ret;
}