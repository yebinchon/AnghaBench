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
 int /*<<< orphan*/  ABB5ZES3_REG_CTRL3 ; 
 int /*<<< orphan*/  ABB5ZES3_REG_CTRL3_BLIE ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct regmap *regmap,
						       bool enable)
{
	return FUNC0(regmap, ABB5ZES3_REG_CTRL3,
				  ABB5ZES3_REG_CTRL3_BLIE,
				  enable ? ABB5ZES3_REG_CTRL3_BLIE : 0);
}