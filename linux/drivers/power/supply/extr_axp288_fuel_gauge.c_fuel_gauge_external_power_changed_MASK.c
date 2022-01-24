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
struct power_supply {int dummy; } ;
struct axp288_fg_info {int /*<<< orphan*/  bat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct axp288_fg_info* FUNC1 (struct power_supply*) ; 

__attribute__((used)) static void FUNC2(struct power_supply *psy)
{
	struct axp288_fg_info *info = FUNC1(psy);

	FUNC0(info->bat);
}