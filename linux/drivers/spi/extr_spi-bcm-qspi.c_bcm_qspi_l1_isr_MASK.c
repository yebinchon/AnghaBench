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
struct bcm_qspi_soc_intc {int (* bcm_qspi_get_int_status ) (struct bcm_qspi_soc_intc*) ;} ;
struct bcm_qspi_dev_id {struct bcm_qspi* dev; } ;
struct bcm_qspi {struct bcm_qspi_soc_intc* soc_intc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BSPI_DONE ; 
 int BSPI_ERR ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MSPI_DONE ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int FUNC3 (struct bcm_qspi_soc_intc*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct bcm_qspi_dev_id *qspi_dev_id = dev_id;
	struct bcm_qspi *qspi = qspi_dev_id->dev;
	struct bcm_qspi_soc_intc *soc_intc = qspi->soc_intc;
	irqreturn_t ret = IRQ_NONE;

	if (soc_intc) {
		u32 status = soc_intc->bcm_qspi_get_int_status(soc_intc);

		if (status & MSPI_DONE)
			ret = FUNC2(irq, dev_id);
		else if (status & BSPI_DONE)
			ret = FUNC1(irq, dev_id);
		else if (status & BSPI_ERR)
			ret = FUNC0(irq, dev_id);
	}

	return ret;
}