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
struct lp3972 {int dummy; } ;

/* Variables and functions */
 int LP3972_LDO1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct lp3972*,int /*<<< orphan*/ ) ; 
 struct lp3972* FUNC4 (struct regulator_dev*) ; 
 int FUNC5 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct regulator_dev *dev)
{
	struct lp3972 *lp3972 = FUNC4(dev);
	int ldo = FUNC5(dev) - LP3972_LDO1;
	u16 mask = FUNC2(ldo);
	u16 val, reg;

	reg = FUNC3(lp3972, FUNC0(ldo));
	val = (reg >> FUNC1(ldo)) & mask;

	return val;
}