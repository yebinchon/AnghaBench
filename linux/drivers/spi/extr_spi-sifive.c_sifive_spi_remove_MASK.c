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
struct spi_master {int dummy; } ;
struct sifive_spi {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SPI_REG_IE ; 
 struct spi_master* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sifive_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sifive_spi* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct spi_master *master = FUNC0(pdev);
	struct sifive_spi *spi = FUNC2(master);

	/* Disable all the interrupts just in case */
	FUNC1(spi, SIFIVE_SPI_REG_IE, 0);

	return 0;
}