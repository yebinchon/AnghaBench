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
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct lp8788_charger {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lp8788_charger*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct lp8788_charger *pchg,
				union power_supply_propval *val)
{
	return FUNC0(pchg, &val->intval);
}