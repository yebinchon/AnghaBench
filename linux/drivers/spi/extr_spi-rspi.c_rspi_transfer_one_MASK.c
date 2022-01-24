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
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSPI_SPCR ; 
 int /*<<< orphan*/  SPCR_TXMD ; 
 int FUNC0 (struct rspi_data*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC1 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rspi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct rspi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rspi_data* FUNC4 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *ctlr,
			     struct spi_device *spi, struct spi_transfer *xfer)
{
	struct rspi_data *rspi = FUNC4(ctlr);
	u8 spcr;

	spcr = FUNC1(rspi, RSPI_SPCR);
	if (xfer->rx_buf) {
		FUNC2(rspi);
		spcr &= ~SPCR_TXMD;
	} else {
		spcr |= SPCR_TXMD;
	}
	FUNC3(rspi, spcr, RSPI_SPCR);

	return FUNC0(rspi, xfer);
}