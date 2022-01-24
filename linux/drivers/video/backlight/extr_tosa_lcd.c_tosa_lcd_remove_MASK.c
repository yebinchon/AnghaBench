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
struct tosa_lcd_data {int /*<<< orphan*/  i2c; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tosa_lcd_data* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tosa_lcd_data*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct tosa_lcd_data *data = FUNC1(spi);

	FUNC0(data->i2c);

	FUNC2(data);

	return 0;
}