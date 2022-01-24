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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct w1_slave {TYPE_1__* master; int /*<<< orphan*/  reg_num; } ;
struct TYPE_4__ {int slave_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  W1_MATCH_ROM ; 
 int /*<<< orphan*/  W1_SKIP_ROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct w1_slave *sl)
{
	if (FUNC2(sl->master))
		return -1;

	if (sl->master->slave_count == 1)
		FUNC3(sl->master, W1_SKIP_ROM);
	else {
		u8 match[9] = {W1_MATCH_ROM, };
		u64 rn = FUNC0(*((u64*)&sl->reg_num));

		FUNC1(&match[1], &rn, 8);
		FUNC4(sl->master, match, 9);
	}
	return 0;
}