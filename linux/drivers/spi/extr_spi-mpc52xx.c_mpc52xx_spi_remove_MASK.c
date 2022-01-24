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
struct platform_device {int dummy; } ;
struct mpc52xx_spi {int gpio_cs_count; int /*<<< orphan*/  regs; int /*<<< orphan*/ * gpio_cs; int /*<<< orphan*/  irq1; int /*<<< orphan*/  irq0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mpc52xx_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 struct spi_master* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mpc52xx_spi* FUNC6 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_master*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *op)
{
	struct spi_master *master = FUNC5(FUNC4(op));
	struct mpc52xx_spi *ms = FUNC6(master);
	int i;

	FUNC0(ms->irq0, ms);
	FUNC0(ms->irq1, ms);

	for (i = 0; i < ms->gpio_cs_count; i++)
		FUNC1(ms->gpio_cs[i]);

	FUNC3(ms->gpio_cs);
	FUNC8(master);
	FUNC2(ms->regs);
	FUNC7(master);

	return 0;
}