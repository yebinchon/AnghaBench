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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_RESET_BBP ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  PBF_SYS_CTRL ; 
 int /*<<< orphan*/  REGISTER_TIMEOUT ; 
 int /*<<< orphan*/  USB_DEVICE_MODE ; 
 int /*<<< orphan*/  USB_MODE_RESET ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	/*
	 * Wait until BBP and RF are ready.
	 */
	if (FUNC0(rt2x00dev))
		return -EBUSY;

	reg = FUNC2(rt2x00dev, PBF_SYS_CTRL);
	FUNC3(rt2x00dev, PBF_SYS_CTRL, reg & ~0x00002000);

	reg = 0;
	FUNC1(&reg, MAC_SYS_CTRL_RESET_CSR, 1);
	FUNC1(&reg, MAC_SYS_CTRL_RESET_BBP, 1);
	FUNC3(rt2x00dev, MAC_SYS_CTRL, reg);

	FUNC4(rt2x00dev, USB_DEVICE_MODE, 0,
				    USB_MODE_RESET, REGISTER_TIMEOUT);

	FUNC3(rt2x00dev, MAC_SYS_CTRL, 0x00000000);

	return 0;
}