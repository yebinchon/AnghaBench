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
struct _adapter {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GPIOMUX_EN ; 
 int GPIOSEL_GPIO ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_IO_SEL ; 
 int HAL_8192S_HW_GPIO_WPS_BIT ; 
 int /*<<< orphan*/  MAC_PINMUX_CTRL ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct _adapter *padapter)
{
	u8	tmp1byte;

	FUNC4(padapter, MAC_PINMUX_CTRL, (GPIOMUX_EN | GPIOSEL_GPIO));
	tmp1byte = FUNC3(padapter, GPIO_IO_SEL);
	tmp1byte &= ~(HAL_8192S_HW_GPIO_WPS_BIT);
	FUNC4(padapter, GPIO_IO_SEL, tmp1byte);
	tmp1byte = FUNC3(padapter, GPIO_CTRL);
	if (tmp1byte == 0xff)
		return;
	if (tmp1byte & HAL_8192S_HW_GPIO_WPS_BIT) {
		/* Here we only set bPbcPressed to true
		 * After trigger PBC, the variable will be set to false
		 */
		FUNC0("CheckPbcGPIO - PBC is pressed !!!!\n");
		/* 0 is the default value and it means the application monitors
		 * the HW PBC doesn't provide its pid to driver.
		 */
		if (padapter->pid == 0)
			return;
		FUNC2(FUNC1(padapter->pid), SIGUSR1, 1);
	}
}