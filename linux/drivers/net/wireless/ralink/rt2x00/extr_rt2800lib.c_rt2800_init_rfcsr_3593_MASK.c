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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int calibration_bw20; int calibration_bw40; void* bbp26; void* bbp25; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_SWITCH ; 
 int /*<<< orphan*/  GPIO_SWITCH_4 ; 
 int /*<<< orphan*/  GPIO_SWITCH_7 ; 
 int /*<<< orphan*/  LDO_CFG0 ; 
 int /*<<< orphan*/  LDO_CFG0_BGSEL ; 
 int /*<<< orphan*/  LDO_CFG0_LDO_CORE_VLEVEL ; 
 int /*<<< orphan*/  RFCSR18_XO_TUNE_BYPASS ; 
 int /*<<< orphan*/  RFCSR2_RESCAL_EN ; 
 void* FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u32 reg;
	u8 rfcsr;

	/* Disable GPIO #4 and #7 function for LAN PE control */
	reg = FUNC4(rt2x00dev, GPIO_SWITCH);
	FUNC8(&reg, GPIO_SWITCH_4, 0);
	FUNC8(&reg, GPIO_SWITCH_7, 0);
	FUNC5(rt2x00dev, GPIO_SWITCH, reg);

	/* Initialize default register values */
	FUNC7(rt2x00dev, 1, 0x03);
	FUNC7(rt2x00dev, 3, 0x80);
	FUNC7(rt2x00dev, 5, 0x00);
	FUNC7(rt2x00dev, 6, 0x40);
	FUNC7(rt2x00dev, 8, 0xf1);
	FUNC7(rt2x00dev, 9, 0x02);
	FUNC7(rt2x00dev, 10, 0xd3);
	FUNC7(rt2x00dev, 11, 0x40);
	FUNC7(rt2x00dev, 12, 0x4e);
	FUNC7(rt2x00dev, 13, 0x12);
	FUNC7(rt2x00dev, 18, 0x40);
	FUNC7(rt2x00dev, 22, 0x20);
	FUNC7(rt2x00dev, 30, 0x10);
	FUNC7(rt2x00dev, 31, 0x80);
	FUNC7(rt2x00dev, 32, 0x78);
	FUNC7(rt2x00dev, 33, 0x3b);
	FUNC7(rt2x00dev, 34, 0x3c);
	FUNC7(rt2x00dev, 35, 0xe0);
	FUNC7(rt2x00dev, 38, 0x86);
	FUNC7(rt2x00dev, 39, 0x23);
	FUNC7(rt2x00dev, 44, 0xd3);
	FUNC7(rt2x00dev, 45, 0xbb);
	FUNC7(rt2x00dev, 46, 0x60);
	FUNC7(rt2x00dev, 49, 0x8e);
	FUNC7(rt2x00dev, 50, 0x86);
	FUNC7(rt2x00dev, 51, 0x75);
	FUNC7(rt2x00dev, 52, 0x45);
	FUNC7(rt2x00dev, 53, 0x18);
	FUNC7(rt2x00dev, 54, 0x18);
	FUNC7(rt2x00dev, 55, 0x18);
	FUNC7(rt2x00dev, 56, 0xdb);
	FUNC7(rt2x00dev, 57, 0x6e);

	/* Initiate calibration */
	/* TODO: use rt2800_rf_init_calibration ? */
	rfcsr = FUNC6(rt2x00dev, 2);
	FUNC9(&rfcsr, RFCSR2_RESCAL_EN, 1);
	FUNC7(rt2x00dev, 2, rfcsr);

	FUNC1(rt2x00dev);

	rfcsr = FUNC6(rt2x00dev, 18);
	FUNC9(&rfcsr, RFCSR18_XO_TUNE_BYPASS, 1);
	FUNC7(rt2x00dev, 18, rfcsr);

	reg = FUNC4(rt2x00dev, LDO_CFG0);
	FUNC8(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
	FUNC8(&reg, LDO_CFG0_BGSEL, 1);
	FUNC5(rt2x00dev, LDO_CFG0, reg);
	FUNC11(1000, 1500);
	reg = FUNC4(rt2x00dev, LDO_CFG0);
	FUNC8(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 0);
	FUNC5(rt2x00dev, LDO_CFG0, reg);

	/* Set initial values for RX filter calibration */
	drv_data->calibration_bw20 = 0x1f;
	drv_data->calibration_bw40 = 0x2f;

	/* Save BBP 25 & 26 values for later use in channel switching */
	drv_data->bbp25 = FUNC0(rt2x00dev, 25);
	drv_data->bbp26 = FUNC0(rt2x00dev, 26);

	FUNC2(rt2x00dev);
	FUNC3(rt2x00dev);

	FUNC10(rt2x00dev);

	/* TODO: enable stream mode support */
}