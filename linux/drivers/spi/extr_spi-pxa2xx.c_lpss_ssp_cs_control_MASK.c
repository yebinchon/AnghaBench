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
typedef  int /*<<< orphan*/  u32 ;
struct spi_device {int /*<<< orphan*/  controller; } ;
struct lpss_config {int /*<<< orphan*/  reg_cs_ctrl; } ;
struct driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPSS_CS_CONTROL_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpss_config* FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct lpss_config const*) ; 
 struct driver_data* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi, bool enable)
{
	struct driver_data *drv_data =
		FUNC4(spi->controller);
	const struct lpss_config *config;
	u32 value;

	config = FUNC2(drv_data);

	if (enable)
		FUNC3(spi, config);

	value = FUNC0(drv_data, config->reg_cs_ctrl);
	if (enable)
		value &= ~LPSS_CS_CONTROL_CS_HIGH;
	else
		value |= LPSS_CS_CONTROL_CS_HIGH;
	FUNC1(drv_data, config->reg_cs_ctrl, value);
}