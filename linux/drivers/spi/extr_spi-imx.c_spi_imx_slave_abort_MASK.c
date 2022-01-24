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
struct spi_imx_data {int slave_aborted; int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct spi_imx_data* FUNC1 (struct spi_master*) ; 

__attribute__((used)) static int FUNC2(struct spi_master *master)
{
	struct spi_imx_data *spi_imx = FUNC1(master);

	spi_imx->slave_aborted = true;
	FUNC0(&spi_imx->xfer_done);

	return 0;
}