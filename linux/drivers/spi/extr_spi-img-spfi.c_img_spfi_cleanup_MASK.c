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
struct spi_device {int /*<<< orphan*/  cs_gpio; } ;
struct img_spfi_device_data {scalar_t__ gpio_requested; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_spfi_device_data*) ; 
 struct img_spfi_device_data* FUNC2 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	struct img_spfi_device_data *spfi_data = FUNC2(spi);

	if (spfi_data) {
		if (spfi_data->gpio_requested)
			FUNC0(spi->cs_gpio);
		FUNC1(spfi_data);
		FUNC3(spi, NULL);
	}
}