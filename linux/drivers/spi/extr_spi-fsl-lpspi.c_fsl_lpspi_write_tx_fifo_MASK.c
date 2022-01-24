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
typedef  int u8 ;
typedef  int u32 ;
struct fsl_lpspi_data {int txfifosize; scalar_t__ base; int /*<<< orphan*/  is_slave; int /*<<< orphan*/  (* tx ) (struct fsl_lpspi_data*) ;int /*<<< orphan*/  remain; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER_FCIE ; 
 int /*<<< orphan*/  IER_TDIE ; 
 scalar_t__ IMX7ULP_FSR ; 
 scalar_t__ IMX7ULP_TCR ; 
 int TCR_CONTC ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_lpspi_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_lpspi_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct fsl_lpspi_data *fsl_lpspi)
{
	u8 txfifo_cnt;
	u32 temp;

	txfifo_cnt = FUNC1(fsl_lpspi->base + IMX7ULP_FSR) & 0xff;

	while (txfifo_cnt < fsl_lpspi->txfifosize) {
		if (!fsl_lpspi->remain)
			break;
		fsl_lpspi->tx(fsl_lpspi);
		txfifo_cnt++;
	}

	if (txfifo_cnt < fsl_lpspi->txfifosize) {
		if (!fsl_lpspi->is_slave) {
			temp = FUNC1(fsl_lpspi->base + IMX7ULP_TCR);
			temp &= ~TCR_CONTC;
			FUNC3(temp, fsl_lpspi->base + IMX7ULP_TCR);
		}

		FUNC0(fsl_lpspi, IER_FCIE);
	} else
		FUNC0(fsl_lpspi, IER_TDIE);
}