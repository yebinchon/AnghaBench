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
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; } ;
struct a3700_spi {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (struct a3700_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct a3700_spi*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct a3700_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct spi_master *master,
				     struct spi_message *message)
{
	struct a3700_spi *a3700_spi = FUNC4(master);
	struct spi_device *spi = message->spi;
	int ret;

	ret = FUNC2(a3700_spi->clk);
	if (ret) {
		FUNC3(&spi->dev, "failed to enable clk with error %d\n", ret);
		return ret;
	}

	/* Flush the FIFOs */
	ret = FUNC0(a3700_spi);
	if (ret)
		return ret;

	FUNC1(a3700_spi, spi->mode);

	return 0;
}