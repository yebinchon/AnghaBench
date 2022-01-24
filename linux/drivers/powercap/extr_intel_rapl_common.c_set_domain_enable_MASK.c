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
struct rapl_domain {int state; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_floor_freq ) (struct rapl_domain*,int) ;} ;

/* Variables and functions */
 int DOMAIN_STATE_BIOS_LOCKED ; 
 int EACCES ; 
 int /*<<< orphan*/  PL1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct rapl_domain* FUNC1 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* rapl_defaults ; 
 int /*<<< orphan*/  FUNC3 (struct rapl_domain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rapl_domain*,int) ; 

__attribute__((used)) static int FUNC5(struct powercap_zone *power_zone, bool mode)
{
	struct rapl_domain *rd = FUNC1(power_zone);

	if (rd->state & DOMAIN_STATE_BIOS_LOCKED)
		return -EACCES;

	FUNC0();
	FUNC3(rd, PL1_ENABLE, mode);
	if (rapl_defaults->set_floor_freq)
		rapl_defaults->set_floor_freq(rd, mode);
	FUNC2();

	return 0;
}