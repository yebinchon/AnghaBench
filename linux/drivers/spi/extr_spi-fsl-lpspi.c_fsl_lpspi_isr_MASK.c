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
struct fsl_lpspi_data {int /*<<< orphan*/  xfer_done; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FSR_TXCOUNT ; 
 int IER_FCIE ; 
 int IER_TDIE ; 
 scalar_t__ IMX7ULP_FSR ; 
 scalar_t__ IMX7ULP_IER ; 
 scalar_t__ IMX7ULP_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SR_FCF ; 
 int SR_MBF ; 
 int SR_TDF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_lpspi_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_lpspi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_lpspi_data*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	u32 temp_SR, temp_IER;
	struct fsl_lpspi_data *fsl_lpspi = dev_id;

	temp_IER = FUNC4(fsl_lpspi->base + IMX7ULP_IER);
	FUNC1(fsl_lpspi, 0);
	temp_SR = FUNC4(fsl_lpspi->base + IMX7ULP_SR);

	FUNC2(fsl_lpspi);

	if ((temp_SR & SR_TDF) && (temp_IER & IER_TDIE)) {
		FUNC3(fsl_lpspi);
		return IRQ_HANDLED;
	}

	if (temp_SR & SR_MBF ||
	    FUNC4(fsl_lpspi->base + IMX7ULP_FSR) & FSR_TXCOUNT) {
		FUNC5(SR_FCF, fsl_lpspi->base + IMX7ULP_SR);
		FUNC1(fsl_lpspi, IER_FCIE);
		return IRQ_HANDLED;
	}

	if (temp_SR & SR_FCF && (temp_IER & IER_FCIE)) {
		FUNC5(SR_FCF, fsl_lpspi->base + IMX7ULP_SR);
			FUNC0(&fsl_lpspi->xfer_done);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}