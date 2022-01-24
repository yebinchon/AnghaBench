#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct w1_slave {TYPE_1__* master; int /*<<< orphan*/  reg_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct w1_slave *sl)
{
	int res;
	u8 magic[10] = {0x96, };
	u64 rn = FUNC1(*((u64*)&sl->reg_num));

	FUNC2(&magic[1], &rn, 8);
	magic[9] = 0x3C;

	FUNC3(&sl->master->bus_mutex);

	res = FUNC5(sl->master);
	if (res)
		goto out;
	FUNC6(sl->master, magic, FUNC0(magic));

	res = FUNC5(sl->master);
out:
	FUNC4(&sl->master->bus_mutex);
	return res;
}