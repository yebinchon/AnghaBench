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
typedef  int u16 ;
struct spi_controller {int /*<<< orphan*/  cur_msg; } ;
struct dw_spi {int /*<<< orphan*/  (* transfer_handler ) (struct dw_spi*) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_SPI_ISR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SPI_INT_TXEI ; 
 int FUNC0 (struct dw_spi*,int /*<<< orphan*/ ) ; 
 struct dw_spi* FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_spi*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct spi_controller *master = dev_id;
	struct dw_spi *dws = FUNC1(master);
	u16 irq_status = FUNC0(dws, DW_SPI_ISR) & 0x3f;

	if (!irq_status)
		return IRQ_NONE;

	if (!master->cur_msg) {
		FUNC2(dws, SPI_INT_TXEI);
		return IRQ_HANDLED;
	}

	return dws->transfer_handler(dws);
}