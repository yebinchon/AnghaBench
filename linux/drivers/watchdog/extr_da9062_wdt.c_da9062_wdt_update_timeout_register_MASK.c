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
struct da9062_watchdog {struct da9062* hw; } ;
struct da9062 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9062AA_CONTROL_D ; 
 int /*<<< orphan*/  DA9062AA_TWDSCALE_MASK ; 
 unsigned int DA9062_TWDSCALE_DISABLE ; 
 int FUNC0 (struct da9062_watchdog*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct da9062_watchdog *wdt,
					      unsigned int regval)
{
	struct da9062 *chip = wdt->hw;
	int ret;

	ret = FUNC0(wdt);
	if (ret)
		return ret;

	FUNC1(chip->regmap,
				  DA9062AA_CONTROL_D,
				  DA9062AA_TWDSCALE_MASK,
				  DA9062_TWDSCALE_DISABLE);

	FUNC2(150, 300);

	return FUNC1(chip->regmap,
				  DA9062AA_CONTROL_D,
				  DA9062AA_TWDSCALE_MASK,
				  regval);
}