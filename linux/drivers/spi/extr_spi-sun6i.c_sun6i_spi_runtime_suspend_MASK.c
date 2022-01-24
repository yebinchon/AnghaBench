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
struct sun6i_spi {int /*<<< orphan*/  hclk; int /*<<< orphan*/  mclk; int /*<<< orphan*/  rstc; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sun6i_spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct spi_master *master = FUNC1(dev);
	struct sun6i_spi *sspi = FUNC3(master);

	FUNC2(sspi->rstc);
	FUNC0(sspi->mclk);
	FUNC0(sspi->hclk);

	return 0;
}