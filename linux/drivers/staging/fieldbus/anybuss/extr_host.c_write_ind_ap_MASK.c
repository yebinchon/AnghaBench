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
 int /*<<< orphan*/  REG_IND_AP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct regmap *regmap, unsigned int ind_ap)
{
	unsigned long timeout = jiffies + HZ / 2;
	unsigned int v, i = 0;

	while (FUNC5(jiffies, timeout)) {
		FUNC4(regmap, REG_IND_AP, ind_ap);
		FUNC3(regmap, REG_IND_AP, &v);
		if (FUNC2(ind_ap == v))
			return 0;
		if (i < 10) {
			FUNC1();
			i++;
		} else {
			FUNC6(500, 1000);
		}
	}
	FUNC0(1, "IND_AP register not stable");
	return -ETIMEDOUT;
}