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
typedef  int u32 ;
struct driver_data {int mask_sr; scalar_t__ tx; scalar_t__ tx_end; int rx_end; int rx; int n_bytes; scalar_t__ (* read ) (struct driver_data*) ;scalar_t__ (* write ) (struct driver_data*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SSCR1 ; 
 int SSCR1_TIE ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_ROR ; 
 int SSSR_TFS ; 
 int SSSR_TINT ; 
 int SSSR_TUR ; 
 int /*<<< orphan*/  FUNC0 (struct driver_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct driver_data*) ; 
 scalar_t__ FUNC2 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*,int*) ; 
 int FUNC4 (struct driver_data*) ; 
 int FUNC5 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct driver_data*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct driver_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct driver_data*) ; 
 scalar_t__ FUNC9 (struct driver_data*) ; 
 scalar_t__ FUNC10 (struct driver_data*) ; 
 scalar_t__ FUNC11 (struct driver_data*) ; 

__attribute__((used)) static irqreturn_t FUNC12(struct driver_data *drv_data)
{
	u32 irq_mask = (FUNC5(drv_data, SSCR1) & SSCR1_TIE) ?
		       drv_data->mask_sr : drv_data->mask_sr & ~SSSR_TFS;

	u32 irq_status = FUNC5(drv_data, SSSR) & irq_mask;

	if (irq_status & SSSR_ROR) {
		FUNC0(drv_data, "interrupt_transfer: fifo overrun");
		return IRQ_HANDLED;
	}

	if (irq_status & SSSR_TUR) {
		FUNC0(drv_data, "interrupt_transfer: fifo underrun");
		return IRQ_HANDLED;
	}

	if (irq_status & SSSR_TINT) {
		FUNC7(drv_data, SSSR, SSSR_TINT);
		if (drv_data->read(drv_data)) {
			FUNC1(drv_data);
			return IRQ_HANDLED;
		}
	}

	/* Drain rx fifo, Fill tx fifo and prevent overruns */
	do {
		if (drv_data->read(drv_data)) {
			FUNC1(drv_data);
			return IRQ_HANDLED;
		}
	} while (drv_data->write(drv_data));

	if (drv_data->read(drv_data)) {
		FUNC1(drv_data);
		return IRQ_HANDLED;
	}

	if (drv_data->tx == drv_data->tx_end) {
		u32 bytes_left;
		u32 sccr1_reg;

		sccr1_reg = FUNC5(drv_data, SSCR1);
		sccr1_reg &= ~SSCR1_TIE;

		/*
		 * PXA25x_SSP has no timeout, set up rx threshould for the
		 * remaining RX bytes.
		 */
		if (FUNC2(drv_data)) {
			u32 rx_thre;

			FUNC3(drv_data, &sccr1_reg);

			bytes_left = drv_data->rx_end - drv_data->rx;
			switch (drv_data->n_bytes) {
			case 4:
				bytes_left >>= 2;
				break;
			case 2:
				bytes_left >>= 1;
				break;
			}

			rx_thre = FUNC4(drv_data);
			if (rx_thre > bytes_left)
				rx_thre = bytes_left;

			FUNC6(drv_data, &sccr1_reg, rx_thre);
		}
		FUNC7(drv_data, SSCR1, sccr1_reg);
	}

	/* We did something */
	return IRQ_HANDLED;
}