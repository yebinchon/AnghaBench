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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LP3972_DCDC1 ; 
 int FUNC1 (struct lp3972*,int /*<<< orphan*/ ) ; 
 struct lp3972* FUNC2 (struct regulator_dev*) ; 
 int FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *dev)
{
	struct lp3972 *lp3972 = FUNC2(dev);
	int buck = FUNC3(dev) - LP3972_DCDC1;
	u16 mask = 1 << (buck * 2);
	u16 val;

	val = FUNC1(lp3972, FUNC0(buck));
	return !!(val & mask);
}