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
struct rapl_domain {TYPE_1__* rpl; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int FUNC0 (struct rapl_domain*,int) ; 
 struct rapl_domain* FUNC1 (struct powercap_zone*) ; 

__attribute__((used)) static const char *FUNC2(struct powercap_zone *power_zone,
				       int cid)
{
	struct rapl_domain *rd;
	int id;

	rd = FUNC1(power_zone);
	id = FUNC0(rd, cid);
	if (id >= 0)
		return rd->rpl[id].name;

	return NULL;
}