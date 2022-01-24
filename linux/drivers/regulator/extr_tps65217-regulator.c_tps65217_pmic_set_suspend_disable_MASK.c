#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tps65217 {int /*<<< orphan*/ * strobes; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  bypass_mask; int /*<<< orphan*/  bypass_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int TPS65217_DCDC_1 ; 
 unsigned int TPS65217_LDO_4 ; 
 int /*<<< orphan*/  TPS65217_PROTECT_L1 ; 
 struct tps65217* FUNC0 (struct regulator_dev*) ; 
 unsigned int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct tps65217*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct tps65217 *tps = FUNC0(dev);
	unsigned int rid = FUNC1(dev);

	if (rid < TPS65217_DCDC_1 || rid > TPS65217_LDO_4)
		return -EINVAL;

	if (!tps->strobes[rid])
		return -EINVAL;

	return FUNC2(tps, dev->desc->bypass_reg,
				 dev->desc->bypass_mask,
				 tps->strobes[rid], TPS65217_PROTECT_L1);
}