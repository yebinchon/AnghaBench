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
struct xlp_spi_priv {int cmd_cont; int /*<<< orphan*/  dev; int /*<<< orphan*/  cs; } ;
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_select; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct spi_master*) ; 
 struct xlp_spi_priv* FUNC1 (struct spi_master*) ; 
 scalar_t__ FUNC2 (struct spi_master*,struct spi_transfer*) ; 
 scalar_t__ FUNC3 (struct xlp_spi_priv*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC4(struct spi_master *master,
					struct spi_device *spi,
					struct spi_transfer *t)
{
	struct xlp_spi_priv *xspi = FUNC1(master);
	int ret = 0;

	xspi->cs = spi->chip_select;
	xspi->dev = spi->dev;

	if (FUNC2(master, t))
		xspi->cmd_cont = 0;
	else
		xspi->cmd_cont = 1;

	if (FUNC3(xspi, t))
		ret = -EIO;

	FUNC0(master);
	return ret;
}