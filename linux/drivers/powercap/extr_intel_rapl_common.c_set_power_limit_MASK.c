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
struct rapl_package {int dummy; } ;
struct rapl_domain {int state; TYPE_1__* rpl; int /*<<< orphan*/  name; struct rapl_package* rp; } ;
struct powercap_zone {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int prim_id; } ;

/* Variables and functions */
 int DOMAIN_STATE_BIOS_LOCKED ; 
 int EACCES ; 
 int EINVAL ; 
#define  PL1_ENABLE 129 
#define  PL2_ENABLE 128 
 int /*<<< orphan*/  POWER_LIMIT1 ; 
 int /*<<< orphan*/  POWER_LIMIT2 ; 
 int FUNC0 (struct rapl_domain*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rapl_package*) ; 
 struct rapl_domain* FUNC4 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rapl_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct powercap_zone *power_zone, int cid,
			   u64 power_limit)
{
	struct rapl_domain *rd;
	struct rapl_package *rp;
	int ret = 0;
	int id;

	FUNC2();
	rd = FUNC4(power_zone);
	id = FUNC0(rd, cid);
	if (id < 0) {
		ret = id;
		goto set_exit;
	}

	rp = rd->rp;

	if (rd->state & DOMAIN_STATE_BIOS_LOCKED) {
		FUNC1(&power_zone->dev,
			 "%s locked by BIOS, monitoring only\n", rd->name);
		ret = -EACCES;
		goto set_exit;
	}

	switch (rd->rpl[id].prim_id) {
	case PL1_ENABLE:
		FUNC6(rd, POWER_LIMIT1, power_limit);
		break;
	case PL2_ENABLE:
		FUNC6(rd, POWER_LIMIT2, power_limit);
		break;
	default:
		ret = -EINVAL;
	}
	if (!ret)
		FUNC3(rp);
set_exit:
	FUNC5();
	return ret;
}