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
typedef  int u64 ;
struct rapl_domain {int state; } ;
struct powercap_zone {int dummy; } ;

/* Variables and functions */
 int DOMAIN_STATE_BIOS_LOCKED ; 
 int EIO ; 
 int /*<<< orphan*/  PL1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct rapl_domain* FUNC1 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct rapl_domain*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC4(struct powercap_zone *power_zone, bool *mode)
{
	struct rapl_domain *rd = FUNC1(power_zone);
	u64 val;

	if (rd->state & DOMAIN_STATE_BIOS_LOCKED) {
		*mode = false;
		return 0;
	}
	FUNC0();
	if (FUNC3(rd, PL1_ENABLE, true, &val)) {
		FUNC2();
		return -EIO;
	}
	*mode = val;
	FUNC2();

	return 0;
}