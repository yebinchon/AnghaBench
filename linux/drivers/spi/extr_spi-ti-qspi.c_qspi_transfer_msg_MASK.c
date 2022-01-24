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
struct ti_qspi {int /*<<< orphan*/  dev; } ;
struct spi_transfer {scalar_t__ rx_buf; scalar_t__ tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ti_qspi*,struct spi_transfer*,int) ; 
 int FUNC2 (struct ti_qspi*,struct spi_transfer*,int) ; 

__attribute__((used)) static int FUNC3(struct ti_qspi *qspi, struct spi_transfer *t,
			     int count)
{
	int ret;

	if (t->tx_buf) {
		ret = FUNC2(qspi, t, count);
		if (ret) {
			FUNC0(qspi->dev, "Error while writing\n");
			return ret;
		}
	}

	if (t->rx_buf) {
		ret = FUNC1(qspi, t, count);
		if (ret) {
			FUNC0(qspi->dev, "Error while reading\n");
			return ret;
		}
	}

	return 0;
}