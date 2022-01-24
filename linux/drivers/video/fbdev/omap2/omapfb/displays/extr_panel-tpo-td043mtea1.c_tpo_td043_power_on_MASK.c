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
struct panel_drv_data {int powered_on; int /*<<< orphan*/  gamma; int /*<<< orphan*/  spi; int /*<<< orphan*/  vmirror; int /*<<< orphan*/  hmirror; int /*<<< orphan*/  mode; int /*<<< orphan*/  nreset_gpio; int /*<<< orphan*/  vcc_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TPO_R02_NCLK_RISING ; 
 int TPO_R03_VAL_NORMAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct panel_drv_data *ddata)
{
	int r;

	if (ddata->powered_on)
		return 0;

	r = FUNC4(ddata->vcc_reg);
	if (r != 0)
		return r;

	/* wait for panel to stabilize */
	FUNC3(160);

	if (FUNC1(ddata->nreset_gpio))
		FUNC2(ddata->nreset_gpio, 1);

	FUNC5(ddata->spi, 2,
			FUNC0(ddata->mode) | TPO_R02_NCLK_RISING);
	FUNC5(ddata->spi, 3, TPO_R03_VAL_NORMAL);
	FUNC5(ddata->spi, 0x20, 0xf0);
	FUNC5(ddata->spi, 0x21, 0xf0);
	FUNC7(ddata->spi, ddata->hmirror,
			ddata->vmirror);
	FUNC6(ddata->spi, ddata->gamma);

	ddata->powered_on = 1;
	return 0;
}