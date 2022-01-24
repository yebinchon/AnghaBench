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
struct lm3630a_chip {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC1(struct lm3630a_chip *pchip, unsigned int reg)
{
	int rval;
	unsigned int reg_val;

	rval = FUNC0(pchip->regmap, reg, &reg_val);
	if (rval < 0)
		return rval;
	return reg_val & 0xFF;
}