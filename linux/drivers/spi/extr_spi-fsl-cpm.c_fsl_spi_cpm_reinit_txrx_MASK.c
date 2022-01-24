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
struct mpc8xxx_spi {int flags; TYPE_1__* pram; int /*<<< orphan*/  subblock; } ;
struct TYPE_2__ {int /*<<< orphan*/  tbase; int /*<<< orphan*/  tbptr; int /*<<< orphan*/  tstate; int /*<<< orphan*/  rbase; int /*<<< orphan*/  rbptr; int /*<<< orphan*/  rstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPM_CR_INIT_TRX ; 
 int /*<<< orphan*/  CPM_SPI_CMD ; 
 int /*<<< orphan*/  QE_CR_PROTOCOL_UNSPECIFIED ; 
 int /*<<< orphan*/  QE_INIT_TX_RX ; 
 int SPI_CPM1 ; 
 int SPI_QE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct mpc8xxx_spi *mspi)
{
	if (mspi->flags & SPI_QE) {
		FUNC4(QE_INIT_TX_RX, mspi->subblock,
			     QE_CR_PROTOCOL_UNSPECIFIED, 0);
	} else {
		if (mspi->flags & SPI_CPM1) {
			FUNC3(&mspi->pram->rstate, 0);
			FUNC2(&mspi->pram->rbptr,
				 FUNC1(&mspi->pram->rbase));
			FUNC3(&mspi->pram->tstate, 0);
			FUNC2(&mspi->pram->tbptr,
				 FUNC1(&mspi->pram->tbase));
		} else {
			FUNC0(CPM_SPI_CMD, CPM_CR_INIT_TRX);
		}
	}
}