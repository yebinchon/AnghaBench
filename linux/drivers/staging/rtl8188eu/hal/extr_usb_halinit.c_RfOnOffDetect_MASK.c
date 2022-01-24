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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ bHWPowerdown; } ;
struct adapter {TYPE_1__ pwrctrlpriv; } ;
typedef  enum rt_rf_power_state { ____Placeholder_rt_rf_power_state } rt_rf_power_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  REG_GPIO_IO_SEL ; 
 int /*<<< orphan*/  REG_HSISR ; 
 int /*<<< orphan*/  REG_MAC_PINMUX_CFG ; 
 int rf_off ; 
 int rf_on ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

enum rt_rf_power_state FUNC4(struct adapter *adapt)
{
	u8 val8;
	enum rt_rf_power_state rfpowerstate = rf_off;

	if (adapt->pwrctrlpriv.bHWPowerdown) {
		val8 = FUNC2(adapt, REG_HSISR);
		FUNC1("pwrdown, 0x5c(BIT(7))=%02x\n", val8);
		rfpowerstate = (val8 & FUNC0(7)) ? rf_off : rf_on;
	} else { /*  rf on/off */
		FUNC3(adapt, REG_MAC_PINMUX_CFG, FUNC2(adapt, REG_MAC_PINMUX_CFG) & ~(FUNC0(3)));
		val8 = FUNC2(adapt, REG_GPIO_IO_SEL);
		FUNC1("GPIO_IN=%02x\n", val8);
		rfpowerstate = (val8 & FUNC0(3)) ? rf_on : rf_off;
	}
	return rfpowerstate;
}