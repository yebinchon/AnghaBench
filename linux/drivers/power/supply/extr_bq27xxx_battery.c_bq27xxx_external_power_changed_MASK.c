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
struct bq27xxx_device_info {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bq27xxx_device_info* FUNC1 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct power_supply *psy)
{
	struct bq27xxx_device_info *di = FUNC1(psy);

	FUNC0(&di->work);
	FUNC2(&di->work, 0);
}