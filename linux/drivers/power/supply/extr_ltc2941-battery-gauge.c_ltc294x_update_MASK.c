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
struct ltc294x_info {int charge; int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTC294X_REG_ACC_CHARGE_MSB ; 
 int FUNC0 (struct ltc294x_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ltc294x_info *info)
{
	int charge = FUNC0(info, LTC294X_REG_ACC_CHARGE_MSB);

	if (charge != info->charge) {
		info->charge = charge;
		FUNC1(info->supply);
	}
}