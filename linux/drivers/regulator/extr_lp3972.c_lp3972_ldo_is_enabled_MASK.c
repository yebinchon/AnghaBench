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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct lp3972*,int /*<<< orphan*/ ) ; 
 struct lp3972* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *dev)
{
	struct lp3972 *lp3972 = FUNC3(dev);
	int ldo = FUNC4(dev) - LP3972_LDO1;
	u16 mask = FUNC0(ldo);
	u16 val;

	val = FUNC2(lp3972, FUNC1(ldo));
	return !!(val & mask);
}