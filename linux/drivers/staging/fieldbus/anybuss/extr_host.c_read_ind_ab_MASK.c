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
struct regmap {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  REG_IND_AB ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct regmap *regmap)
{
	unsigned long timeout = jiffies + HZ / 2;
	unsigned int a, b, i = 0;

	while (FUNC4(jiffies, timeout)) {
		FUNC3(regmap, REG_IND_AB, &a);
		FUNC3(regmap, REG_IND_AB, &b);
		if (FUNC2(a == b))
			return (int)a;
		if (i < 10) {
			FUNC1();
			i++;
		} else {
			FUNC5(500, 1000);
		}
	}
	FUNC0(1, "IND_AB register not stable");
	return -ETIMEDOUT;
}