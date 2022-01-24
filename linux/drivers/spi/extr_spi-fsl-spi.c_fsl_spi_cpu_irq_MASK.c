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
struct mpc8xxx_spi {int (* get_tx ) (struct mpc8xxx_spi*) ;int /*<<< orphan*/  done; scalar_t__ count; int /*<<< orphan*/  (* get_rx ) (int,struct mpc8xxx_spi*) ;scalar_t__ rx; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int /*<<< orphan*/  transmit; int /*<<< orphan*/  event; int /*<<< orphan*/  receive; } ;

/* Variables and functions */
 int SPIE_NE ; 
 int SPIE_NF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct mpc8xxx_spi*) ; 
 int FUNC5 (struct mpc8xxx_spi*) ; 

__attribute__((used)) static void FUNC6(struct mpc8xxx_spi *mspi, u32 events)
{
	struct fsl_spi_reg *reg_base = mspi->reg_base;

	/* We need handle RX first */
	if (events & SPIE_NE) {
		u32 rx_data = FUNC2(&reg_base->receive);

		if (mspi->rx)
			mspi->get_rx(rx_data, mspi);
	}

	if ((events & SPIE_NF) == 0)
		/* spin until TX is done */
		while (((events =
			FUNC2(&reg_base->event)) &
						SPIE_NF) == 0)
			FUNC1();

	/* Clear the events */
	FUNC3(&reg_base->event, events);

	mspi->count -= 1;
	if (mspi->count) {
		u32 word = mspi->get_tx(mspi);

		FUNC3(&reg_base->transmit, word);
	} else {
		FUNC0(&mspi->done);
	}
}