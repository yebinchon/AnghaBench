#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct spi_message {int /*<<< orphan*/  status; } ;
struct driver_data {int mask_sr; int dma_cr1; TYPE_1__* controller; int /*<<< orphan*/  clear_sr; int /*<<< orphan*/  dma_running; } ;
struct TYPE_2__ {struct spi_message* cur_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int /*<<< orphan*/  SSCR1 ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_ROR ; 
 int /*<<< orphan*/  SSTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 int FUNC2 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct driver_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct driver_data *drv_data,
					     bool error)
{
	struct spi_message *msg = drv_data->controller->cur_msg;

	/*
	 * It is possible that one CPU is handling ROR interrupt and other
	 * just gets DMA completion. Calling pump_transfers() twice for the
	 * same transfer leads to problems thus we prevent concurrent calls
	 * by using ->dma_running.
	 */
	if (FUNC0(&drv_data->dma_running)) {
		/*
		 * If the other CPU is still handling the ROR interrupt we
		 * might not know about the error yet. So we re-check the
		 * ROR bit here before we clear the status register.
		 */
		if (!error) {
			u32 status = FUNC2(drv_data, SSSR)
				     & drv_data->mask_sr;
			error = status & SSSR_ROR;
		}

		/* Clear status & disable interrupts */
		FUNC3(drv_data, SSCR1,
				 FUNC2(drv_data, SSCR1)
				 & ~drv_data->dma_cr1);
		FUNC5(drv_data, drv_data->clear_sr);
		if (!FUNC1(drv_data))
			FUNC3(drv_data, SSTO, 0);

		if (error) {
			/* In case we got an error we disable the SSP now */
			FUNC3(drv_data, SSCR0,
					 FUNC2(drv_data, SSCR0)
					 & ~SSCR0_SSE);
			msg->status = -EIO;
		}

		FUNC4(drv_data->controller);
	}
}