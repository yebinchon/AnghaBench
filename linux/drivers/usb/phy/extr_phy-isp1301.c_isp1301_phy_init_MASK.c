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
struct usb_phy {int dummy; } ;
struct isp1301 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_I2C_INTERRUPT_FALLING ; 
 int /*<<< orphan*/  ISP1301_I2C_INTERRUPT_LATCH ; 
 int /*<<< orphan*/  ISP1301_I2C_INTERRUPT_RISING ; 
 int /*<<< orphan*/  ISP1301_I2C_MODE_CONTROL_1 ; 
 int /*<<< orphan*/  ISP1301_I2C_MODE_CONTROL_2 ; 
 int /*<<< orphan*/  ISP1301_I2C_OTG_CONTROL_1 ; 
 int MC1_DAT_SE0 ; 
 int MC1_SPEED_REG ; 
 int MC1_UART_EN ; 
 int MC2_BI_DI ; 
 int MC2_PSW_EN ; 
 int MC2_SPD_SUSP_CTRL ; 
 int OTG1_DM_PULLDOWN ; 
 int OTG1_DM_PULLUP ; 
 int OTG1_DP_PULLDOWN ; 
 int OTG1_DP_PULLUP ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*,int /*<<< orphan*/ ,int) ; 
 struct isp1301* FUNC2 (struct usb_phy*) ; 

__attribute__((used)) static int FUNC3(struct usb_phy *phy)
{
	struct isp1301 *isp = FUNC2(phy);

	/* Disable transparent UART mode first */
	FUNC0(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_UART_EN);
	FUNC0(isp, ISP1301_I2C_MODE_CONTROL_1, ~MC1_SPEED_REG);
	FUNC1(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_SPEED_REG);
	FUNC0(isp, ISP1301_I2C_MODE_CONTROL_2, ~0);
	FUNC1(isp, ISP1301_I2C_MODE_CONTROL_2, (MC2_BI_DI | MC2_PSW_EN
				| MC2_SPD_SUSP_CTRL));

	FUNC0(isp, ISP1301_I2C_OTG_CONTROL_1, ~0);
	FUNC1(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_DAT_SE0);
	FUNC1(isp, ISP1301_I2C_OTG_CONTROL_1, (OTG1_DM_PULLDOWN
				| OTG1_DP_PULLDOWN));
	FUNC0(isp, ISP1301_I2C_OTG_CONTROL_1, (OTG1_DM_PULLUP
				| OTG1_DP_PULLUP));

	/* mask all interrupts */
	FUNC0(isp, ISP1301_I2C_INTERRUPT_LATCH, ~0);
	FUNC0(isp, ISP1301_I2C_INTERRUPT_FALLING, ~0);
	FUNC0(isp, ISP1301_I2C_INTERRUPT_RISING, ~0);

	return 0;
}