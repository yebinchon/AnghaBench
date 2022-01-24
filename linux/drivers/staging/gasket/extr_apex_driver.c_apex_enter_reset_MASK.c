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
struct gasket_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER ; 
 int /*<<< orphan*/  APEX_BAR2_REG_SCU_2 ; 
 int /*<<< orphan*/  APEX_BAR2_REG_SCU_3 ; 
 int /*<<< orphan*/  APEX_BAR2_REG_USER_HIB_DMA_PAUSE ; 
 int /*<<< orphan*/  APEX_BAR2_REG_USER_HIB_DMA_PAUSED ; 
 int /*<<< orphan*/  APEX_BAR_INDEX ; 
 int APEX_RESET_DELAY ; 
 int APEX_RESET_RETRY ; 
 int FUNC0 (int) ; 
 int ETIMEDOUT ; 
 scalar_t__ bypass_top_level ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gasket_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC5 (struct gasket_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct gasket_dev *gasket_dev)
{
	if (bypass_top_level)
		return 0;

	/*
	 * Software reset:
	 * Enable sleep mode
	 *  - Software force GCB idle
	 *    - Enable GCB idle
	 */
	FUNC4(gasket_dev, APEX_BAR_INDEX,
				    APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER,
				    0x0, 1, 32);

	/*    - Initiate DMA pause */
	FUNC2(gasket_dev, 1, APEX_BAR_INDEX,
			    APEX_BAR2_REG_USER_HIB_DMA_PAUSE);

	/*    - Wait for DMA pause complete. */
	if (FUNC5(gasket_dev, APEX_BAR_INDEX,
					APEX_BAR2_REG_USER_HIB_DMA_PAUSED, 1, 1,
					APEX_RESET_DELAY, APEX_RESET_RETRY)) {
		FUNC1(gasket_dev->dev,
			"DMAs did not quiesce within timeout (%d ms)\n",
			APEX_RESET_RETRY * APEX_RESET_DELAY);
		return -ETIMEDOUT;
	}

	/*  - Enable GCB reset (0x1 to rg_rst_gcb) */
	FUNC3(gasket_dev, APEX_BAR_INDEX,
				    APEX_BAR2_REG_SCU_2, 0x1, 2, 2);

	/*  - Enable GCB clock Gate (0x1 to rg_gated_gcb) */
	FUNC3(gasket_dev, APEX_BAR_INDEX,
				    APEX_BAR2_REG_SCU_2, 0x1, 2, 18);

	/*  - Enable GCB memory shut down (0x3 to rg_force_ram_sd) */
	FUNC3(gasket_dev, APEX_BAR_INDEX,
				    APEX_BAR2_REG_SCU_3, 0x3, 2, 14);

	/*    - Wait for RAM shutdown. */
	if (FUNC5(gasket_dev, APEX_BAR_INDEX,
					APEX_BAR2_REG_SCU_3, FUNC0(6), FUNC0(6),
					APEX_RESET_DELAY, APEX_RESET_RETRY)) {
		FUNC1(gasket_dev->dev,
			"RAM did not shut down within timeout (%d ms)\n",
			APEX_RESET_RETRY * APEX_RESET_DELAY);
		return -ETIMEDOUT;
	}

	return 0;
}