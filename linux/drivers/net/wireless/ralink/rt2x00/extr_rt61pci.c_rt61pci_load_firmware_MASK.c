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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FIRMWARE_IMAGE_BASE ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  HOST_CMD_CSR ; 
 int /*<<< orphan*/  M2H_CMD_DONE_CSR ; 
 int /*<<< orphan*/  MAC_CSR0 ; 
 int /*<<< orphan*/  MAC_CSR1 ; 
 int /*<<< orphan*/  MAC_CSR1_BBP_RESET ; 
 int /*<<< orphan*/  MAC_CSR1_HOST_READY ; 
 int /*<<< orphan*/  MAC_CSR1_SOFT_RESET ; 
 int /*<<< orphan*/  MCU_CNTL_CSR ; 
 int /*<<< orphan*/  MCU_CNTL_CSR_READY ; 
 int /*<<< orphan*/  MCU_CNTL_CSR_RESET ; 
 int /*<<< orphan*/  MCU_CNTL_CSR_SELECT_BANK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t const) ; 
 int FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev,
				 const u8 *data, const size_t len)
{
	int i;
	u32 reg;

	/*
	 * Wait for stable hardware.
	 */
	for (i = 0; i < 100; i++) {
		reg = FUNC5(rt2x00dev, MAC_CSR0);
		if (reg)
			break;
		FUNC0(1);
	}

	if (!reg) {
		FUNC1(rt2x00dev, "Unstable hardware\n");
		return -EBUSY;
	}

	/*
	 * Prepare MCU and mailbox for firmware loading.
	 */
	reg = 0;
	FUNC3(&reg, MCU_CNTL_CSR_RESET, 1);
	FUNC6(rt2x00dev, MCU_CNTL_CSR, reg);
	FUNC6(rt2x00dev, M2H_CMD_DONE_CSR, 0xffffffff);
	FUNC6(rt2x00dev, H2M_MAILBOX_CSR, 0);
	FUNC6(rt2x00dev, HOST_CMD_CSR, 0);

	/*
	 * Write firmware to device.
	 */
	reg = 0;
	FUNC3(&reg, MCU_CNTL_CSR_RESET, 1);
	FUNC3(&reg, MCU_CNTL_CSR_SELECT_BANK, 1);
	FUNC6(rt2x00dev, MCU_CNTL_CSR, reg);

	FUNC4(rt2x00dev, FIRMWARE_IMAGE_BASE,
				       data, len);

	FUNC3(&reg, MCU_CNTL_CSR_SELECT_BANK, 0);
	FUNC6(rt2x00dev, MCU_CNTL_CSR, reg);

	FUNC3(&reg, MCU_CNTL_CSR_RESET, 0);
	FUNC6(rt2x00dev, MCU_CNTL_CSR, reg);

	for (i = 0; i < 100; i++) {
		reg = FUNC5(rt2x00dev, MCU_CNTL_CSR);
		if (FUNC2(reg, MCU_CNTL_CSR_READY))
			break;
		FUNC0(1);
	}

	if (i == 100) {
		FUNC1(rt2x00dev, "MCU Control register not ready\n");
		return -EBUSY;
	}

	/*
	 * Hardware needs another millisecond before it is ready.
	 */
	FUNC0(1);

	/*
	 * Reset MAC and BBP registers.
	 */
	reg = 0;
	FUNC3(&reg, MAC_CSR1_SOFT_RESET, 1);
	FUNC3(&reg, MAC_CSR1_BBP_RESET, 1);
	FUNC6(rt2x00dev, MAC_CSR1, reg);

	reg = FUNC5(rt2x00dev, MAC_CSR1);
	FUNC3(&reg, MAC_CSR1_SOFT_RESET, 0);
	FUNC3(&reg, MAC_CSR1_BBP_RESET, 0);
	FUNC6(rt2x00dev, MAC_CSR1, reg);

	reg = FUNC5(rt2x00dev, MAC_CSR1);
	FUNC3(&reg, MAC_CSR1_HOST_READY, 1);
	FUNC6(rt2x00dev, MAC_CSR1, reg);

	return 0;
}