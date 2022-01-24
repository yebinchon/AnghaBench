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
struct tcs_cmd {int /*<<< orphan*/  data; scalar_t__ addr; } ;
struct rpmh_vreg {unsigned int voltage_selector; scalar_t__ addr; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ RPMH_REGULATOR_REG_VRM_VOLTAGE ; 
 struct rpmh_vreg* FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,unsigned int) ; 
 int FUNC3 (struct rpmh_vreg*,struct tcs_cmd*,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev,
				unsigned int selector, bool wait_for_ack)
{
	struct rpmh_vreg *vreg = FUNC1(rdev);
	struct tcs_cmd cmd = {
		.addr = vreg->addr + RPMH_REGULATOR_REG_VRM_VOLTAGE,
	};
	int ret;

	/* VRM voltage control register is set with voltage in millivolts. */
	cmd.data = FUNC0(FUNC2(rdev,
							selector), 1000);

	ret = FUNC3(vreg, &cmd, wait_for_ack);
	if (!ret)
		vreg->voltage_selector = selector;

	return ret;
}