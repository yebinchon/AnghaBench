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
 unsigned int BD70528_MASK_CHG_BAT_DETECT ; 
 int /*<<< orphan*/  BD70528_REG_CHG_BAT_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct bd70528_psy *bdpsy, int *val)
{
	int ret;
	unsigned int v;

	ret = FUNC1(bdpsy->regmap, BD70528_REG_CHG_BAT_STAT, &v);
	if (ret) {
		FUNC0(bdpsy->dev, "Battery state read failure %d\n",
			ret);
		return ret;
	}

	*val = (v & BD70528_MASK_CHG_BAT_DETECT) ? 1 : 0;

	return 0;
}