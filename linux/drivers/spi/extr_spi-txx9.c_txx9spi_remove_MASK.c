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
struct txx9spi {int /*<<< orphan*/  clk; int /*<<< orphan*/  work; } ;
struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC2 (struct platform_device*) ; 
 struct txx9spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dev)
{
	struct spi_master *master = FUNC2(dev);
	struct txx9spi *c = FUNC3(master);

	FUNC1(&c->work);
	FUNC0(c->clk);
	return 0;
}