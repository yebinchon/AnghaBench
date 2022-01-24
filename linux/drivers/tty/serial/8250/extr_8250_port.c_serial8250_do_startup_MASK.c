#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int fifosize; size_t type; scalar_t__ iotype; int flags; int irqflags; int iobase; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; scalar_t__ irq; int /*<<< orphan*/  handle_irq; } ;
struct TYPE_5__ {int flags; int irqflags; int quirks; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; } ;
struct uart_8250_port {int tx_loadsz; scalar_t__ cur_iotype; int bugs; int ier; int /*<<< orphan*/ * dma; scalar_t__ msr_saved_flags; scalar_t__ lsr_saved_flags; TYPE_2__ port; TYPE_1__* ops; scalar_t__ acr; scalar_t__ mcr; scalar_t__ capabilities; } ;
struct TYPE_6__ {int fifo_size; int tx_loadsz; scalar_t__ flags; } ;
struct TYPE_4__ {int (* setup_irq ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int IRQF_SHARED ; 
 size_t PORT_16850 ; 
 size_t PORT_16C950 ; 
 size_t PORT_ALTR_16550_F128 ; 
 size_t PORT_ALTR_16550_F32 ; 
 size_t PORT_ALTR_16550_F64 ; 
 size_t PORT_DA830 ; 
 size_t PORT_NPCM ; 
 size_t PORT_XR17V35X ; 
 int /*<<< orphan*/  TIOCM_OUT1 ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_ALTR_AFR ; 
 unsigned char UART_ALTR_EN_TXFIFO_LW ; 
 int /*<<< orphan*/  UART_ALTR_TX_LOW ; 
 int UART_BUG_THRE ; 
 int UART_BUG_TXEN ; 
 int /*<<< orphan*/  UART_CSR ; 
 int /*<<< orphan*/  UART_DA830_PWREMU_MGMT ; 
 unsigned char UART_DA830_PWREMU_MGMT_FREE ; 
 unsigned char UART_DA830_PWREMU_MGMT_URRST ; 
 unsigned char UART_DA830_PWREMU_MGMT_UTRST ; 
 int /*<<< orphan*/  UART_EFR ; 
 unsigned char UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_FCTR ; 
 unsigned char UART_FCTR_RX ; 
 unsigned char UART_FCTR_TRGD ; 
 unsigned char UART_FCTR_TX ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 unsigned char UART_IER_THRI ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned char UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_B ; 
 unsigned char UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_TEMT ; 
 int /*<<< orphan*/  UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_MSR ; 
 int UART_NPCM_TOIE ; 
 int /*<<< orphan*/  UART_NPCM_TOR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  UART_TRG ; 
 unsigned char UART_TRG_96 ; 
 int /*<<< orphan*/  UART_XR_EFR ; 
 int UPF_BUGGY_UART ; 
 int UPF_BUG_THRE ; 
 int UPF_FOURPORT ; 
 int UPF_NO_THRE_TEST ; 
 int UPQ_NO_TXEN_TEST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_8250_port*) ; 
 int FUNC11 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serial8250_tx_threshold_handle_irq ; 
 int /*<<< orphan*/  FUNC15 (struct uart_8250_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC16 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC18 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct uart_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC20 (struct uart_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC21 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC24 (struct uart_8250_port*) ; 
 TYPE_3__* uart_config ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 struct uart_8250_port* FUNC26 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC27 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 

int FUNC28(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC26(port);
	unsigned long flags;
	unsigned char lsr, iir;
	int retval;

	if (!port->fifosize)
		port->fifosize = uart_config[port->type].fifo_size;
	if (!up->tx_loadsz)
		up->tx_loadsz = uart_config[port->type].tx_loadsz;
	if (!up->capabilities)
		up->capabilities = uart_config[port->type].flags;
	up->mcr = 0;

	if (port->iotype != up->cur_iotype)
		FUNC21(port);

	FUNC12(up);
	if (port->type == PORT_16C950) {
		/* Wake up and initialize UART */
		up->acr = 0;
		FUNC19(port, UART_LCR, UART_LCR_CONF_MODE_B);
		FUNC19(port, UART_EFR, UART_EFR_ECB);
		FUNC19(port, UART_IER, 0);
		FUNC19(port, UART_LCR, 0);
		FUNC15(up, UART_CSR, 0); /* Reset the UART */
		FUNC19(port, UART_LCR, UART_LCR_CONF_MODE_B);
		FUNC19(port, UART_EFR, UART_EFR_ECB);
		FUNC19(port, UART_LCR, 0);
	}

	if (port->type == PORT_DA830) {
		/* Reset the port */
		FUNC19(port, UART_IER, 0);
		FUNC19(port, UART_DA830_PWREMU_MGMT, 0);
		FUNC4(10);

		/* Enable Tx, Rx and free run mode */
		FUNC19(port, UART_DA830_PWREMU_MGMT,
				UART_DA830_PWREMU_MGMT_UTRST |
				UART_DA830_PWREMU_MGMT_URRST |
				UART_DA830_PWREMU_MGMT_FREE);
	}

	if (port->type == PORT_NPCM) {
		/*
		 * Nuvoton calls the scratch register 'UART_TOR' (timeout
		 * register). Enable it, and set TIOC (timeout interrupt
		 * comparator) to be 0x20 for correct operation.
		 */
		FUNC19(port, UART_NPCM_TOR, UART_NPCM_TOIE | 0x20);
	}

#ifdef CONFIG_SERIAL_8250_RSA
	/*
	 * If this is an RSA port, see if we can kick it up to the
	 * higher speed clock.
	 */
	enable_rsa(up);
#endif

	if (port->type == PORT_XR17V35X) {
		/*
		 * First enable access to IER [7:5], ISR [5:4], FCR [5:4],
		 * MCR [7:5] and MSR [7:0]
		 */
		FUNC19(port, UART_XR_EFR, UART_EFR_ECB);

		/*
		 * Make sure all interrups are masked until initialization is
		 * complete and the FIFOs are cleared
		 */
		FUNC19(port, UART_IER, 0);
	}

	/*
	 * Clear the FIFO buffers and disable them.
	 * (they will be reenabled in set_termios())
	 */
	FUNC10(up);

	/*
	 * Clear the interrupt registers.
	 */
	FUNC18(port, UART_LSR);
	FUNC18(port, UART_RX);
	FUNC18(port, UART_IIR);
	FUNC18(port, UART_MSR);

	/*
	 * At this point, there's no way the LSR could still be 0xff;
	 * if it is, then bail out, because there's likely no UART
	 * here.
	 */
	if (!(port->flags & UPF_BUGGY_UART) &&
	    (FUNC18(port, UART_LSR) == 0xff)) {
		FUNC8("%s: LSR safety check engaged!\n", port->name);
		retval = -ENODEV;
		goto out;
	}

	/*
	 * For a XR16C850, we need to set the trigger levels
	 */
	if (port->type == PORT_16850) {
		unsigned char fctr;

		FUNC17(up, UART_LCR, UART_LCR_CONF_MODE_B);

		fctr = FUNC16(up, UART_FCTR) & ~(UART_FCTR_RX|UART_FCTR_TX);
		FUNC19(port, UART_FCTR,
				fctr | UART_FCTR_TRGD | UART_FCTR_RX);
		FUNC19(port, UART_TRG, UART_TRG_96);
		FUNC19(port, UART_FCTR,
				fctr | UART_FCTR_TRGD | UART_FCTR_TX);
		FUNC19(port, UART_TRG, UART_TRG_96);

		FUNC19(port, UART_LCR, 0);
	}

	/*
	 * For the Altera 16550 variants, set TX threshold trigger level.
	 */
	if (((port->type == PORT_ALTR_16550_F32) ||
	     (port->type == PORT_ALTR_16550_F64) ||
	     (port->type == PORT_ALTR_16550_F128)) && (port->fifosize > 1)) {
		/* Bounds checking of TX threshold (valid 0 to fifosize-2) */
		if ((up->tx_loadsz < 2) || (up->tx_loadsz > port->fifosize)) {
			FUNC7("%s TX FIFO Threshold errors, skipping\n",
			       port->name);
		} else {
			FUNC19(port, UART_ALTR_AFR,
					UART_ALTR_EN_TXFIFO_LW);
			FUNC19(port, UART_ALTR_TX_LOW,
					port->fifosize - up->tx_loadsz);
			port->handle_irq = serial8250_tx_threshold_handle_irq;
		}
	}

	if (port->irq && !(up->port.flags & UPF_NO_THRE_TEST)) {
		unsigned char iir1;
		/*
		 * Test for UARTs that do not reassert THRE when the
		 * transmitter is idle and the interrupt has already
		 * been cleared.  Real 16550s should always reassert
		 * this interrupt whenever the transmitter is idle and
		 * the interrupt is enabled.  Delays are necessary to
		 * allow register changes to become visible.
		 */
		FUNC22(&port->lock, flags);
		if (up->port.irqflags & IRQF_SHARED)
			FUNC0(port->irq);

		FUNC27(up, UART_LSR_THRE);
		FUNC20(port, UART_IER, UART_IER_THRI);
		FUNC25(1); /* allow THRE to set */
		iir1 = FUNC18(port, UART_IIR);
		FUNC19(port, UART_IER, 0);
		FUNC20(port, UART_IER, UART_IER_THRI);
		FUNC25(1); /* allow a working UART time to re-assert THRE */
		iir = FUNC18(port, UART_IIR);
		FUNC19(port, UART_IER, 0);

		if (port->irqflags & IRQF_SHARED)
			FUNC1(port->irq);
		FUNC23(&port->lock, flags);

		/*
		 * If the interrupt is not reasserted, or we otherwise
		 * don't trust the iir, setup a timer to kick the UART
		 * on a regular basis.
		 */
		if ((!(iir1 & UART_IIR_NO_INT) && (iir & UART_IIR_NO_INT)) ||
		    up->port.flags & UPF_BUG_THRE) {
			up->bugs |= UART_BUG_THRE;
		}
	}

	retval = up->ops->setup_irq(up);
	if (retval)
		goto out;

	/*
	 * Now, initialize the UART
	 */
	FUNC19(port, UART_LCR, UART_LCR_WLEN8);

	FUNC22(&port->lock, flags);
	if (up->port.flags & UPF_FOURPORT) {
		if (!up->port.irq)
			up->port.mctrl |= TIOCM_OUT1;
	} else
		/*
		 * Most PC uarts need OUT2 raised to enable interrupts.
		 */
		if (port->irq)
			up->port.mctrl |= TIOCM_OUT2;

	FUNC14(port, port->mctrl);

	/*
	 * Serial over Lan (SoL) hack:
	 * Intel 8257x Gigabit ethernet chips have a 16550 emulation, to be
	 * used for Serial Over Lan.  Those chips take a longer time than a
	 * normal serial device to signalize that a transmission data was
	 * queued. Due to that, the above test generally fails. One solution
	 * would be to delay the reading of iir. However, this is not
	 * reliable, since the timeout is variable. So, let's just don't
	 * test if we receive TX irq.  This way, we'll never enable
	 * UART_BUG_TXEN.
	 */
	if (up->port.quirks & UPQ_NO_TXEN_TEST)
		goto dont_test_tx_en;

	/*
	 * Do a quick test to see if we receive an interrupt when we enable
	 * the TX irq.
	 */
	FUNC19(port, UART_IER, UART_IER_THRI);
	lsr = FUNC18(port, UART_LSR);
	iir = FUNC18(port, UART_IIR);
	FUNC19(port, UART_IER, 0);

	if (lsr & UART_LSR_TEMT && iir & UART_IIR_NO_INT) {
		if (!(up->bugs & UART_BUG_TXEN)) {
			up->bugs |= UART_BUG_TXEN;
			FUNC6("%s - enabling bad tx status workarounds\n",
				 port->name);
		}
	} else {
		up->bugs &= ~UART_BUG_TXEN;
	}

dont_test_tx_en:
	FUNC23(&port->lock, flags);

	/*
	 * Clear the interrupt registers again for luck, and clear the
	 * saved flags to avoid getting false values from polling
	 * routines or the previous session.
	 */
	FUNC18(port, UART_LSR);
	FUNC18(port, UART_RX);
	FUNC18(port, UART_IIR);
	FUNC18(port, UART_MSR);
	up->lsr_saved_flags = 0;
	up->msr_saved_flags = 0;

	/*
	 * Request DMA channels for both RX and TX.
	 */
	if (up->dma) {
		retval = FUNC11(up);
		if (retval) {
			FUNC9("%s - failed to request DMA\n",
					    port->name);
			up->dma = NULL;
		}
	}

	/*
	 * Set the IER shadow for rx interrupts but defer actual interrupt
	 * enable until after the FIFOs are enabled; otherwise, an already-
	 * active sender can swamp the interrupt handler with "too much work".
	 */
	up->ier = UART_IER_RLSI | UART_IER_RDI;

	if (port->flags & UPF_FOURPORT) {
		unsigned int icp;
		/*
		 * Enable interrupts on the AST Fourport board
		 */
		icp = (port->iobase & 0xfe0) | 0x01f;
		FUNC5(0x80, icp);
		FUNC3(icp);
	}
	retval = 0;
out:
	FUNC13(up);
	return retval;
}