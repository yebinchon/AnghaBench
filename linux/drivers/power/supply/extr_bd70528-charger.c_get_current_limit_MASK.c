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
struct bd70528_psy {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int BD70528_MASK_CHG_DCIN_ILIM ; 
 int /*<<< orphan*/  BD70528_REG_CHG_DCIN_ILIM ; 
 int /*<<< orphan*/ * current_limit_ranges ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct bd70528_psy *bdpsy, int *ma)
{
	unsigned int sel;
	int ret;

	ret = FUNC3(bdpsy->regmap, BD70528_REG_CHG_DCIN_ILIM,
			  &sel);

	if (ret) {
		FUNC1(bdpsy->dev,
			"Input current limit reading failed (%d)\n", ret);
		return ret;
	}

	sel &= BD70528_MASK_CHG_DCIN_ILIM;

	ret = FUNC2(&current_limit_ranges[0],
					  FUNC0(current_limit_ranges), sel,
					  ma);

	if (ret) {
		/* Unspecified values mean 500 mA */
		*ma = 500;
	}
	return 0;
}