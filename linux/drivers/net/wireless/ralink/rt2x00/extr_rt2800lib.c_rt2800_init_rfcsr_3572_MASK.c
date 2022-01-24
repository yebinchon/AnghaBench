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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDO_CFG0 ; 
 int /*<<< orphan*/  LDO_CFG0_BGSEL ; 
 int /*<<< orphan*/  LDO_CFG0_LDO_CORE_VLEVEL ; 
 int /*<<< orphan*/  RFCSR6_R2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int) ; 
 int FUNC6 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct rt2x00_dev *rt2x00dev)
{
	u8 rfcsr;
	u32 reg;

	FUNC5(rt2x00dev, 30);

	FUNC7(rt2x00dev, 0, 0x70);
	FUNC7(rt2x00dev, 1, 0x81);
	FUNC7(rt2x00dev, 2, 0xf1);
	FUNC7(rt2x00dev, 3, 0x02);
	FUNC7(rt2x00dev, 4, 0x4c);
	FUNC7(rt2x00dev, 5, 0x05);
	FUNC7(rt2x00dev, 6, 0x4a);
	FUNC7(rt2x00dev, 7, 0xd8);
	FUNC7(rt2x00dev, 9, 0xc3);
	FUNC7(rt2x00dev, 10, 0xf1);
	FUNC7(rt2x00dev, 11, 0xb9);
	FUNC7(rt2x00dev, 12, 0x70);
	FUNC7(rt2x00dev, 13, 0x65);
	FUNC7(rt2x00dev, 14, 0xa0);
	FUNC7(rt2x00dev, 15, 0x53);
	FUNC7(rt2x00dev, 16, 0x4c);
	FUNC7(rt2x00dev, 17, 0x23);
	FUNC7(rt2x00dev, 18, 0xac);
	FUNC7(rt2x00dev, 19, 0x93);
	FUNC7(rt2x00dev, 20, 0xb3);
	FUNC7(rt2x00dev, 21, 0xd0);
	FUNC7(rt2x00dev, 22, 0x00);
	FUNC7(rt2x00dev, 23, 0x3c);
	FUNC7(rt2x00dev, 24, 0x16);
	FUNC7(rt2x00dev, 25, 0x15);
	FUNC7(rt2x00dev, 26, 0x85);
	FUNC7(rt2x00dev, 27, 0x00);
	FUNC7(rt2x00dev, 28, 0x00);
	FUNC7(rt2x00dev, 29, 0x9b);
	FUNC7(rt2x00dev, 30, 0x09);
	FUNC7(rt2x00dev, 31, 0x10);

	rfcsr = FUNC6(rt2x00dev, 6);
	FUNC10(&rfcsr, RFCSR6_R2, 1);
	FUNC7(rt2x00dev, 6, rfcsr);

	reg = FUNC3(rt2x00dev, LDO_CFG0);
	FUNC9(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 3);
	FUNC9(&reg, LDO_CFG0_BGSEL, 1);
	FUNC4(rt2x00dev, LDO_CFG0, reg);
	FUNC0(1);
	reg = FUNC3(rt2x00dev, LDO_CFG0);
	FUNC9(&reg, LDO_CFG0_LDO_CORE_VLEVEL, 0);
	FUNC9(&reg, LDO_CFG0_BGSEL, 1);
	FUNC4(rt2x00dev, LDO_CFG0, reg);

	FUNC8(rt2x00dev);
	FUNC1(rt2x00dev);
	FUNC2(rt2x00dev);
}