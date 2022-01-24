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
typedef  scalar_t__ u32 ;
struct ucs1002_info {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  UCS1002_REG_ILIMIT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__* ucs1002_current_limit_uA ; 

__attribute__((used)) static int FUNC3(struct ucs1002_info *info, u32 val)
{
	unsigned int reg;
	int ret, idx;

	for (idx = 0; idx < FUNC0(ucs1002_current_limit_uA); idx++) {
		if (val == ucs1002_current_limit_uA[idx])
			break;
	}

	if (idx == FUNC0(ucs1002_current_limit_uA))
		return -EINVAL;

	ret = FUNC2(info->regmap, UCS1002_REG_ILIMIT, idx);
	if (ret)
		return ret;
	/*
	 * Any current limit setting exceeding the one set via ILIM
	 * pin will be rejected, so we read out freshly changed limit
	 * to make sure that it took effect.
	 */
	ret = FUNC1(info->regmap, UCS1002_REG_ILIMIT, &reg);
	if (ret)
		return ret;

	if (reg != idx)
		return -EINVAL;

	return 0;
}