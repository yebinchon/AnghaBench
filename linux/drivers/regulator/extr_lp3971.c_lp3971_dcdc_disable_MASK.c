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
typedef  int u16 ;
struct regulator_dev {int dummy; } ;
struct lp3971 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP3971_BUCK_VOL_ENABLE_REG ; 
 int LP3971_DCDC1 ; 
 int FUNC0 (struct lp3971*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lp3971* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct lp3971 *lp3971 = FUNC1(dev);
	int buck = FUNC2(dev) - LP3971_DCDC1;
	u16 mask = 1 << (buck * 2);

	return FUNC0(lp3971, LP3971_BUCK_VOL_ENABLE_REG, mask, 0);
}