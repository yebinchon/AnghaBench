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
struct palmas {int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  PALMAS_SMPS_BASE ; 
 size_t REGULATOR_SLAVE ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct palmas *palmas, unsigned int reg,
		unsigned int value)
{
	unsigned int addr;

	addr = FUNC0(PALMAS_SMPS_BASE, reg);

	return FUNC1(palmas->regmap[REGULATOR_SLAVE], addr, value);
}