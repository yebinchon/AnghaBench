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
struct spi_controller {int dummy; } ;
struct rspi_data {int /*<<< orphan*/  spcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSPI_SPCMD0 ; 
 int /*<<< orphan*/  RSPI_SPCR ; 
 int /*<<< orphan*/  RSPI_SPSCR ; 
 int SPCR_SPE ; 
 int FUNC0 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rspi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rspi_data*,int,int /*<<< orphan*/ ) ; 
 struct rspi_data* FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct spi_controller *ctlr,
				  struct spi_message *msg)
{
	struct rspi_data *rspi = FUNC3(ctlr);

	/* Disable SPI function */
	FUNC2(rspi, FUNC0(rspi, RSPI_SPCR) & ~SPCR_SPE, RSPI_SPCR);

	/* Reset sequencer for Single SPI Transfers */
	FUNC1(rspi, rspi->spcmd, RSPI_SPCMD0);
	FUNC2(rspi, 0, RSPI_SPSCR);
	return 0;
}