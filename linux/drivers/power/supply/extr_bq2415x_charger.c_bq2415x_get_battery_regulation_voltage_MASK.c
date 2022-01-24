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
struct bq2415x_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ2415X_MASK_VO ; 
 int /*<<< orphan*/  BQ2415X_REG_VOLTAGE ; 
 int /*<<< orphan*/  BQ2415X_SHIFT_VO ; 
 int FUNC0 (struct bq2415x_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct bq2415x_device *bq)
{
	int ret = FUNC0(bq, BQ2415X_REG_VOLTAGE,
			BQ2415X_MASK_VO, BQ2415X_SHIFT_VO);

	if (ret < 0)
		return ret;
	return 10 * (350 + 2*ret);
}