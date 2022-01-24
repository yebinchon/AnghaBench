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
struct panel_drv_data {scalar_t__ powered_on; int /*<<< orphan*/  vcc_reg; int /*<<< orphan*/  spi; int /*<<< orphan*/  nreset_gpio; } ;

/* Variables and functions */
 int TPO_R03_EN_PWM ; 
 int TPO_R03_VAL_STANDBY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct panel_drv_data *ddata)
{
	if (!ddata->powered_on)
		return;

	FUNC4(ddata->spi, 3,
			TPO_R03_VAL_STANDBY | TPO_R03_EN_PWM);

	if (FUNC0(ddata->nreset_gpio))
		FUNC1(ddata->nreset_gpio, 0);

	/* wait for at least 2 vsyncs before cutting off power */
	FUNC2(50);

	FUNC4(ddata->spi, 3, TPO_R03_VAL_STANDBY);

	FUNC3(ddata->vcc_reg);

	ddata->powered_on = 0;
}