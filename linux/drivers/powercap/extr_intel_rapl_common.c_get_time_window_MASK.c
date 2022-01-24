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
typedef  int /*<<< orphan*/  u64 ;
struct rapl_domain {TYPE_1__* rpl; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int prim_id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PL1_ENABLE 129 
#define  PL2_ENABLE 128 
 int /*<<< orphan*/  TIME_WINDOW1 ; 
 int /*<<< orphan*/  TIME_WINDOW2 ; 
 int FUNC0 (struct rapl_domain*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct rapl_domain* FUNC2 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct rapl_domain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct powercap_zone *power_zone, int cid,
			   u64 *data)
{
	struct rapl_domain *rd;
	u64 val;
	int ret = 0;
	int id;

	FUNC1();
	rd = FUNC2(power_zone);
	id = FUNC0(rd, cid);
	if (id < 0) {
		ret = id;
		goto get_time_exit;
	}

	switch (rd->rpl[id].prim_id) {
	case PL1_ENABLE:
		ret = FUNC4(rd, TIME_WINDOW1, true, &val);
		break;
	case PL2_ENABLE:
		ret = FUNC4(rd, TIME_WINDOW2, true, &val);
		break;
	default:
		FUNC3();
		return -EINVAL;
	}
	if (!ret)
		*data = val;

get_time_exit:
	FUNC3();

	return ret;
}