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
struct driver_data {int int_cr1; int dma_cr1; int /*<<< orphan*/  dma_running; int /*<<< orphan*/  clear_sr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int /*<<< orphan*/  SSCR1 ; 
 int /*<<< orphan*/  SSTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct driver_data*) ; 
 int FUNC3 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*,int /*<<< orphan*/ ,int) ; 
 struct driver_data* FUNC5 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct spi_controller *controller,
				 struct spi_message *msg)
{
	struct driver_data *drv_data = FUNC5(controller);

	/* Disable the SSP */
	FUNC4(drv_data, SSCR0,
			 FUNC3(drv_data, SSCR0) & ~SSCR0_SSE);
	/* Clear and disable interrupts and service requests */
	FUNC6(drv_data, drv_data->clear_sr);
	FUNC4(drv_data, SSCR1,
			 FUNC3(drv_data, SSCR1)
			 & ~(drv_data->int_cr1 | drv_data->dma_cr1));
	if (!FUNC1(drv_data))
		FUNC4(drv_data, SSTO, 0);

	/*
	 * Stop the DMA if running. Note DMA callback handler may have unset
	 * the dma_running already, which is fine as stopping is not needed
	 * then but we shouldn't rely this flag for anything else than
	 * stopping. For instance to differentiate between PIO and DMA
	 * transfers.
	 */
	if (FUNC0(&drv_data->dma_running))
		FUNC2(drv_data);
}