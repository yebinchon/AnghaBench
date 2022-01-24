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
struct sun4i_spi {int /*<<< orphan*/  hclk; int /*<<< orphan*/  mclk; } ;
struct spi_master {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_master* FUNC1 (struct device*) ; 
 struct sun4i_spi* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct spi_master *master = FUNC1(dev);
	struct sun4i_spi *sspi = FUNC2(master);

	FUNC0(sspi->mclk);
	FUNC0(sspi->hclk);

	return 0;
}