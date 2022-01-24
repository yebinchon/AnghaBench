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
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCP16502_OFFSET_MODE_A ; 
 int /*<<< orphan*/  MCP16502_OFFSET_MODE_HIB ; 
 int /*<<< orphan*/  MCP16502_OFFSET_MODE_LPM ; 
#define  MCP16502_OPMODE_ACTIVE 130 
#define  MCP16502_OPMODE_HIB 129 
#define  MCP16502_OPMODE_LPM 128 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, int opmode)
{
	int reg = FUNC0(FUNC1(rdev));

	switch (opmode) {
	case MCP16502_OPMODE_ACTIVE:
		return reg + MCP16502_OFFSET_MODE_A;
	case MCP16502_OPMODE_LPM:
		return reg + MCP16502_OFFSET_MODE_LPM;
	case MCP16502_OPMODE_HIB:
		return reg + MCP16502_OFFSET_MODE_HIB;
	default:
		return -EINVAL;
	}
}