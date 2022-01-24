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
struct ppc4xx_spi {int /*<<< orphan*/  regs; int /*<<< orphan*/  irqnum; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  bitbang; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ppc4xx_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ppc4xx_spi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ppc4xx_spi* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_master*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *op)
{
	struct spi_master *master = FUNC3(op);
	struct ppc4xx_spi *hw = FUNC6(master);

	FUNC5(&hw->bitbang);
	FUNC4(hw->mapbase, hw->mapsize);
	FUNC1(hw->irqnum, hw);
	FUNC2(hw->regs);
	FUNC0(hw);
	FUNC7(master);
	return 0;
}