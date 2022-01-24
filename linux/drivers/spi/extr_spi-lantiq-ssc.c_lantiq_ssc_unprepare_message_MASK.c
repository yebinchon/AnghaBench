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
struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct lantiq_ssc_spi {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_SPI_CON ; 
 int LTQ_SPI_CON_RXOFF ; 
 int LTQ_SPI_CON_TXOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lantiq_ssc_spi* FUNC2 (struct spi_master*) ; 

__attribute__((used)) static int FUNC3(struct spi_master *master,
					struct spi_message *message)
{
	struct lantiq_ssc_spi *spi = FUNC2(master);

	FUNC0(spi->wq);

	/* Disable transmitter and receiver while idle */
	FUNC1(spi, 0, LTQ_SPI_CON_TXOFF | LTQ_SPI_CON_RXOFF,
			 LTQ_SPI_CON);

	return 0;
}