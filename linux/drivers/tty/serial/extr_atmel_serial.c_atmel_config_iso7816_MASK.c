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
struct serial_iso7816 {int flags; int tg; } ;
struct uart_port {struct serial_iso7816 iso7816; int /*<<< orphan*/  dev; } ;
struct atmel_uart_port {unsigned int tx_done_mask; unsigned int fidi_min; unsigned int fidi_max; unsigned int backup_mode; unsigned int backup_brgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_BRGR ; 
 unsigned int ATMEL_US_CLKO ; 
 int /*<<< orphan*/  ATMEL_US_CR ; 
 unsigned int ATMEL_US_DSNACK ; 
 int ATMEL_US_ENDTX ; 
 int /*<<< orphan*/  ATMEL_US_FIDI ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 unsigned int ATMEL_US_INACK ; 
 int ATMEL_US_ITERATION ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  ATMEL_US_MR ; 
 int ATMEL_US_NACK ; 
 unsigned int ATMEL_US_NBSTOP ; 
 unsigned int ATMEL_US_NBSTOP_1 ; 
 unsigned int ATMEL_US_PAR ; 
 unsigned int ATMEL_US_PAR_EVEN ; 
 unsigned int ATMEL_US_RXEN ; 
 int /*<<< orphan*/  ATMEL_US_TTGR ; 
 int ATMEL_US_TXBUFE ; 
 unsigned int ATMEL_US_TXDIS ; 
 int ATMEL_US_TXEMPTY ; 
 int ATMEL_US_TXRDY ; 
 unsigned int ATMEL_US_USCLKS ; 
 unsigned int ATMEL_US_USCLKS_MCK ; 
 unsigned int ATMEL_US_USMODE ; 
 unsigned int ATMEL_US_USMODE_ISO7816_T0 ; 
 unsigned int ATMEL_US_USMODE_ISO7816_T1 ; 
 int EINVAL ; 
 int SER_ISO7816_ENABLED ; 
 int FUNC1 (int) ; 
 int SER_ISO7816_T_PARAM ; 
 unsigned int FUNC2 (struct uart_port*,struct serial_iso7816*) ; 
 unsigned int FUNC3 (struct uart_port*,struct serial_iso7816*) ; 
 void* FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct serial_iso7816*,int /*<<< orphan*/ ,int) ; 
 struct atmel_uart_port* FUNC11 (struct uart_port*) ; 

__attribute__((used)) static int FUNC12(struct uart_port *port,
				struct serial_iso7816 *iso7816conf)
{
	struct atmel_uart_port *atmel_port = FUNC11(port);
	unsigned int mode;
	unsigned int cd, fidi;
	int ret = 0;

	/* Disable interrupts */
	FUNC5(port, ATMEL_US_IDR, atmel_port->tx_done_mask);

	mode = FUNC4(port, ATMEL_US_MR);

	if (iso7816conf->flags & SER_ISO7816_ENABLED) {
		mode &= ~ATMEL_US_USMODE;

		if (iso7816conf->tg > 255) {
			FUNC8(port->dev, "ISO7816: Timeguard exceeding 255\n");
			FUNC10(iso7816conf, 0, sizeof(struct serial_iso7816));
			ret = -EINVAL;
			goto err_out;
		}

		if ((iso7816conf->flags & SER_ISO7816_T_PARAM)
		    == FUNC1(0)) {
			mode |= ATMEL_US_USMODE_ISO7816_T0 | ATMEL_US_DSNACK;
		} else if ((iso7816conf->flags & SER_ISO7816_T_PARAM)
			   == FUNC1(1)) {
			mode |= ATMEL_US_USMODE_ISO7816_T1 | ATMEL_US_INACK;
		} else {
			FUNC8(port->dev, "ISO7816: Type not supported\n");
			FUNC10(iso7816conf, 0, sizeof(struct serial_iso7816));
			ret = -EINVAL;
			goto err_out;
		}

		mode &= ~(ATMEL_US_USCLKS | ATMEL_US_NBSTOP | ATMEL_US_PAR);

		/* select mck clock, and output  */
		mode |= ATMEL_US_USCLKS_MCK | ATMEL_US_CLKO;
		/* set parity for normal/inverse mode + max iterations */
		mode |= ATMEL_US_PAR_EVEN | ATMEL_US_NBSTOP_1 | FUNC0(3);

		cd = FUNC2(port, iso7816conf);
		fidi = FUNC3(port, iso7816conf);
		if (fidi == 0) {
			FUNC9(port->dev, "ISO7816 fidi = 0, Generator generates no signal\n");
		} else if (fidi < atmel_port->fidi_min
			   || fidi > atmel_port->fidi_max) {
			FUNC8(port->dev, "ISO7816 fidi = %u, value not supported\n", fidi);
			FUNC10(iso7816conf, 0, sizeof(struct serial_iso7816));
			ret = -EINVAL;
			goto err_out;
		}

		if (!(port->iso7816.flags & SER_ISO7816_ENABLED)) {
			/* port not yet in iso7816 mode: store configuration */
			atmel_port->backup_mode = FUNC4(port, ATMEL_US_MR);
			atmel_port->backup_brgr = FUNC4(port, ATMEL_US_BRGR);
		}

		FUNC5(port, ATMEL_US_TTGR, iso7816conf->tg);
		FUNC5(port, ATMEL_US_BRGR, cd);
		FUNC5(port, ATMEL_US_FIDI, fidi);

		FUNC5(port, ATMEL_US_CR, ATMEL_US_TXDIS | ATMEL_US_RXEN);
		atmel_port->tx_done_mask = ATMEL_US_TXEMPTY | ATMEL_US_NACK | ATMEL_US_ITERATION;
	} else {
		FUNC7(port->dev, "Setting UART back to RS232\n");
		/* back to last RS232 settings */
		mode = atmel_port->backup_mode;
		FUNC10(iso7816conf, 0, sizeof(struct serial_iso7816));
		FUNC5(port, ATMEL_US_TTGR, 0);
		FUNC5(port, ATMEL_US_BRGR, atmel_port->backup_brgr);
		FUNC5(port, ATMEL_US_FIDI, 0x174);

		if (FUNC6(port))
			atmel_port->tx_done_mask = ATMEL_US_ENDTX |
						   ATMEL_US_TXBUFE;
		else
			atmel_port->tx_done_mask = ATMEL_US_TXRDY;
	}

	port->iso7816 = *iso7816conf;

	FUNC5(port, ATMEL_US_MR, mode);

err_out:
	/* Enable interrupts */
	FUNC5(port, ATMEL_US_IER, atmel_port->tx_done_mask);

	return ret;
}