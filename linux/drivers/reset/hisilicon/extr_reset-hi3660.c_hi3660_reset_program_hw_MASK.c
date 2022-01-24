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
struct reset_controller_dev {int dummy; } ;
struct hi3660_reset_controller {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct hi3660_reset_controller* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
				   unsigned long idx, bool assert)
{
	struct hi3660_reset_controller *rc = FUNC2(rcdev);
	unsigned int offset = idx >> 8;
	unsigned int mask = FUNC0(idx & 0x1f);

	if (assert)
		return FUNC1(rc->map, offset, mask);
	else
		return FUNC1(rc->map, offset + 4, mask);
}