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
union power_supply_propval {unsigned long long intval; } ;
typedef  scalar_t__ u64 ;
struct da9150_fg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9150_QIF_UAVG ; 
 int /*<<< orphan*/  DA9150_QIF_UAVG_SIZE ; 
 unsigned long long FUNC0 (struct da9150_fg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct da9150_fg *fg,
				 union power_supply_propval *val)
{
	u64 res;

	val->intval = FUNC0(fg, DA9150_QIF_UAVG,
					       DA9150_QIF_UAVG_SIZE);

	res = (u64) (val->intval * 186ULL);
	FUNC1(res, 10000);
	val->intval = (int) res;

	return 0;
}