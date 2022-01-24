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
typedef  int /*<<< orphan*/  u64 ;
struct rapl_domain {int dummy; } ;
struct powercap_zone {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENERGY_COUNTER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct rapl_domain* FUNC1 (struct powercap_zone*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rapl_domain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct powercap_zone *power_zone,
			      u64 *energy_raw)
{
	struct rapl_domain *rd;
	u64 energy_now;

	/* prevent CPU hotplug, make sure the RAPL domain does not go
	 * away while reading the counter.
	 */
	FUNC0();
	rd = FUNC1(power_zone);

	if (!FUNC3(rd, ENERGY_COUNTER, true, &energy_now)) {
		*energy_raw = energy_now;
		FUNC2();

		return 0;
	}
	FUNC2();

	return -EIO;
}