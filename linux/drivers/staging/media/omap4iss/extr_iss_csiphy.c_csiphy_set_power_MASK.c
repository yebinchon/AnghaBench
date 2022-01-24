#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct iss_csiphy {TYPE_1__* iss; int /*<<< orphan*/  cfg_regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI2_COMPLEXIO_CFG ; 
 int /*<<< orphan*/  CSI2_COMPLEXIO_CFG_PWD_CMD_MASK ; 
 int CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK ; 
 int CSI2_COMPLEXIO_CFG_PWR_AUTO ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct iss_csiphy *phy, u32 power)
{
	u32 reg;
	u8 retry_count;

	FUNC2(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG,
		       CSI2_COMPLEXIO_CFG_PWD_CMD_MASK,
		       power | CSI2_COMPLEXIO_CFG_PWR_AUTO);

	retry_count = 0;
	do {
		FUNC3(1);
		reg = FUNC1(phy->iss, phy->cfg_regs, CSI2_COMPLEXIO_CFG)
		    & CSI2_COMPLEXIO_CFG_PWD_STATUS_MASK;

		if (reg != power >> 2)
			retry_count++;

	} while ((reg != power >> 2) && (retry_count < 250));

	if (retry_count == 250) {
		FUNC0(phy->iss->dev, "CSI2 CIO set power failed!\n");
		return -EBUSY;
	}

	return 0;
}