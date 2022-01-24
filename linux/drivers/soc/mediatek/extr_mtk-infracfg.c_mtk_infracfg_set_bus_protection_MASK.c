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
typedef  int u32 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFRA_TOPAXI_PROTECTEN ; 
 int /*<<< orphan*/  INFRA_TOPAXI_PROTECTEN_SET ; 
 int /*<<< orphan*/  INFRA_TOPAXI_PROTECTSTA1 ; 
 int /*<<< orphan*/  MTK_POLL_DELAY_US ; 
 int /*<<< orphan*/  MTK_POLL_TIMEOUT ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct regmap *infracfg, u32 mask,
		bool reg_update)
{
	u32 val;
	int ret;

	if (reg_update)
		FUNC1(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
				mask);
	else
		FUNC2(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);

	ret = FUNC0(infracfg, INFRA_TOPAXI_PROTECTSTA1,
				       val, (val & mask) == mask,
				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);

	return ret;
}