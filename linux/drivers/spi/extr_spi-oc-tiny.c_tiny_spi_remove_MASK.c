#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct spi_master* master; } ;
struct tiny_spi {unsigned int gpio_cs_count; int /*<<< orphan*/ * gpio_cs; TYPE_1__ bitbang; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tiny_spi* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct tiny_spi *hw = FUNC1(pdev);
	struct spi_master *master = hw->bitbang.master;
	unsigned int i;

	FUNC2(&hw->bitbang);
	for (i = 0; i < hw->gpio_cs_count; i++)
		FUNC0(hw->gpio_cs[i]);
	FUNC3(master);
	return 0;
}