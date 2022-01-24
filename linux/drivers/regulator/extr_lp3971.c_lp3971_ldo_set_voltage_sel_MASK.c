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
struct regulator_dev {int dummy; } ;
struct lp3971 {int dummy; } ;

/* Variables and functions */
 unsigned int LDO_VOL_CONTR_MASK ; 
 unsigned int FUNC0 (int) ; 
 int LP3971_LDO1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lp3971*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct lp3971* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *dev,
				      unsigned int selector)
{
	struct lp3971 *lp3971 = FUNC3(dev);
	int ldo = FUNC4(dev) - LP3971_LDO1;

	return FUNC2(lp3971, FUNC1(ldo),
			LDO_VOL_CONTR_MASK << FUNC0(ldo),
			selector << FUNC0(ldo));
}