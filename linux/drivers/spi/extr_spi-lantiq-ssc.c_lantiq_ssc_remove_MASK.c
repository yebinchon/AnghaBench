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
struct platform_device {int dummy; } ;
struct lantiq_ssc_spi {int /*<<< orphan*/  fpi_clk; int /*<<< orphan*/  spi_clk; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_SPI_CLC ; 
 int /*<<< orphan*/  LTQ_SPI_IRNEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC4 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lantiq_ssc_spi* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct lantiq_ssc_spi*) ; 
 int /*<<< orphan*/  FUNC7 (struct lantiq_ssc_spi*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lantiq_ssc_spi *spi = FUNC5(pdev);

	FUNC4(spi, 0, LTQ_SPI_IRNEN);
	FUNC4(spi, 0, LTQ_SPI_CLC);
	FUNC6(spi);
	FUNC7(spi);
	FUNC3(spi);

	FUNC2(spi->wq);
	FUNC0(spi->spi_clk);
	FUNC1(spi->fpi_clk);

	return 0;
}