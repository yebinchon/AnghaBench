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
struct spi_engine {int /*<<< orphan*/  clk; int /*<<< orphan*/  ref_clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SPI_ENGINE_REG_INT_ENABLE ; 
 scalar_t__ SPI_ENGINE_REG_INT_PENDING ; 
 scalar_t__ SPI_ENGINE_REG_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct spi_master*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC4 (int /*<<< orphan*/ ) ; 
 struct spi_engine* FUNC5 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct spi_master *master = FUNC4(FUNC2(pdev));
	struct spi_engine *spi_engine = FUNC5(master);
	int irq = FUNC3(pdev, 0);

	FUNC7(master);

	FUNC1(irq, master);

	FUNC6(master);

	FUNC8(0xff, spi_engine->base + SPI_ENGINE_REG_INT_PENDING);
	FUNC8(0x00, spi_engine->base + SPI_ENGINE_REG_INT_ENABLE);
	FUNC8(0x01, spi_engine->base + SPI_ENGINE_REG_RESET);

	FUNC0(spi_engine->ref_clk);
	FUNC0(spi_engine->clk);

	return 0;
}