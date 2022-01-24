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
struct uart_port {scalar_t__ type; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  status; int /*<<< orphan*/  dev; int /*<<< orphan*/  uartclk; } ;
struct sci_port {unsigned int hscif_tot; int autorts; int rx_frame; int rx_timeout; int buf_len_rx; TYPE_1__* cfg; int /*<<< orphan*/ * clks; int /*<<< orphan*/ * clk_rates; } ;
struct plat_sci_reg {scalar_t__ size; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {unsigned int scscr; } ;

/* Variables and functions */
 int CREAD ; 
 int CRTSCTS ; 
#define  CS5 130 
#define  CS6 129 
#define  CS7 128 
 int CSIZE ; 
 int CSTOPB ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,unsigned int) ; 
 unsigned int HSCIF_SRDE ; 
 unsigned int HSCIF_SRE ; 
 int HSCIF_SRHP_MASK ; 
 int HSCIF_SRHP_SHIFT ; 
 int /*<<< orphan*/  HSSRR ; 
 int INT_MAX ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ PORT_SCIFA ; 
 scalar_t__ PORT_SCIFB ; 
 int /*<<< orphan*/  SCBRR ; 
 int /*<<< orphan*/  SCCKS ; 
 unsigned int SCCKS_CKS ; 
 unsigned int SCCKS_XIN ; 
 int /*<<< orphan*/  SCDL ; 
 int /*<<< orphan*/  SCFCR ; 
 unsigned short SCFCR_RFRST ; 
 unsigned short SCFCR_TFRST ; 
 size_t SCI_BRG_INT ; 
 int SCI_FCK ; 
 unsigned int SCI_NUM_CLKS ; 
 size_t SCI_SCIF_CLK ; 
 size_t SCI_SCK ; 
 int /*<<< orphan*/  SCSCR ; 
 unsigned int SCSCR_CKE0 ; 
 unsigned int SCSCR_CKE1 ; 
 unsigned int SCSCR_RE ; 
 unsigned int SCSCR_TE ; 
 int /*<<< orphan*/  SCSMR ; 
 unsigned int SCSMR_ASYNC ; 
 unsigned int SCSMR_CHR ; 
 unsigned int SCSMR_CKEDG ; 
 unsigned int SCSMR_CKS ; 
 unsigned int SCSMR_ODD ; 
 unsigned int SCSMR_PE ; 
 unsigned int SCSMR_SRC_11 ; 
 unsigned int SCSMR_SRC_13 ; 
 unsigned int SCSMR_SRC_16 ; 
 unsigned int SCSMR_SRC_17 ; 
 unsigned int SCSMR_SRC_19 ; 
 unsigned int SCSMR_SRC_27 ; 
 unsigned int SCSMR_SRC_5 ; 
 unsigned int SCSMR_SRC_7 ; 
 unsigned int SCSMR_SRC_MASK ; 
 unsigned int SCSMR_STOP ; 
 scalar_t__ FUNC2 (struct uart_port*,int) ; 
 int UPF_HARD_FLOW ; 
 int /*<<< orphan*/  UPSTAT_AUTOCTS ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned long FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct sci_port*) ; 
 int FUNC8 (struct sci_port*,unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 struct plat_sci_reg* FUNC10 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sci_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct sci_port*) ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*) ; 
 int FUNC15 (struct sci_port*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC16 (struct sci_port*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct uart_port*) ; 
 unsigned int FUNC19 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sci_port* FUNC23 (struct uart_port*) ; 
 unsigned int FUNC24 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 

__attribute__((used)) static void FUNC27(struct uart_port *port, struct ktermios *termios,
			    struct ktermios *old)
{
	unsigned int baud, smr_val = SCSMR_ASYNC, scr_val = 0, i, bits;
	unsigned int brr = 255, cks = 0, srr = 15, dl = 0, sccks = 0;
	unsigned int brr1 = 255, cks1 = 0, srr1 = 15, dl1 = 0;
	struct sci_port *s = FUNC23(port);
	const struct plat_sci_reg *reg;
	int min_err = INT_MAX, err;
	unsigned long max_freq = 0;
	int best_clk = -1;
	unsigned long flags;

	if ((termios->c_cflag & CSIZE) == CS7)
		smr_val |= SCSMR_CHR;
	if (termios->c_cflag & PARENB)
		smr_val |= SCSMR_PE;
	if (termios->c_cflag & PARODD)
		smr_val |= SCSMR_PE | SCSMR_ODD;
	if (termios->c_cflag & CSTOPB)
		smr_val |= SCSMR_STOP;

	/*
	 * earlyprintk comes here early on with port->uartclk set to zero.
	 * the clock framework is not up and running at this point so here
	 * we assume that 115200 is the maximum baud rate. please note that
	 * the baud rate is not programmed during earlyprintk - it is assumed
	 * that the previous boot loader has enabled required clocks and
	 * setup the baud rate generator hardware for us already.
	 */
	if (!port->uartclk) {
		baud = FUNC24(port, termios, old, 0, 115200);
		goto done;
	}

	for (i = 0; i < SCI_NUM_CLKS; i++)
		max_freq = FUNC6(max_freq, s->clk_rates[i]);

	baud = FUNC24(port, termios, old, 0, max_freq / FUNC7(s));
	if (!baud)
		goto done;

	/*
	 * There can be multiple sources for the sampling clock.  Find the one
	 * that gives us the smallest deviation from the desired baud rate.
	 */

	/* Optional Undivided External Clock */
	if (s->clk_rates[SCI_SCK] && port->type != PORT_SCIFA &&
	    port->type != PORT_SCIFB) {
		err = FUNC16(s, baud, &srr1);
		if (FUNC3(err) < FUNC3(min_err)) {
			best_clk = SCI_SCK;
			scr_val = SCSCR_CKE1;
			sccks = SCCKS_CKS;
			min_err = err;
			srr = srr1;
			if (!err)
				goto done;
		}
	}

	/* Optional BRG Frequency Divided External Clock */
	if (s->clk_rates[SCI_SCIF_CLK] && FUNC10(port, SCDL)->size) {
		err = FUNC8(s, baud, s->clk_rates[SCI_SCIF_CLK], &dl1,
				   &srr1);
		if (FUNC3(err) < FUNC3(min_err)) {
			best_clk = SCI_SCIF_CLK;
			scr_val = SCSCR_CKE1;
			sccks = 0;
			min_err = err;
			dl = dl1;
			srr = srr1;
			if (!err)
				goto done;
		}
	}

	/* Optional BRG Frequency Divided Internal Clock */
	if (s->clk_rates[SCI_BRG_INT] && FUNC10(port, SCDL)->size) {
		err = FUNC8(s, baud, s->clk_rates[SCI_BRG_INT], &dl1,
				   &srr1);
		if (FUNC3(err) < FUNC3(min_err)) {
			best_clk = SCI_BRG_INT;
			scr_val = SCSCR_CKE1;
			sccks = SCCKS_XIN;
			min_err = err;
			dl = dl1;
			srr = srr1;
			if (!min_err)
				goto done;
		}
	}

	/* Divided Functional Clock using standard Bit Rate Register */
	err = FUNC15(s, baud, &brr1, &srr1, &cks1);
	if (FUNC3(err) < FUNC3(min_err)) {
		best_clk = SCI_FCK;
		scr_val = 0;
		min_err = err;
		brr = brr1;
		srr = srr1;
		cks = cks1;
	}

done:
	if (best_clk >= 0)
		FUNC5(port->dev, "Using clk %pC for %u%+d bps\n",
			s->clks[best_clk], baud, min_err);

	FUNC13(s);

	/*
	 * Program the optional External Baud Rate Generator (BRG) first.
	 * It controls the mux to select (H)SCK or frequency divided clock.
	 */
	if (best_clk >= 0 && FUNC10(port, SCCKS)->size) {
		FUNC20(port, SCDL, dl);
		FUNC20(port, SCCKS, sccks);
	}

	FUNC21(&port->lock, flags);

	FUNC14(port);

	FUNC25(port, termios->c_cflag, baud);

	/* byte size and parity */
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		bits = 7;
		break;
	case CS6:
		bits = 8;
		break;
	case CS7:
		bits = 9;
		break;
	default:
		bits = 10;
		break;
	}

	if (termios->c_cflag & CSTOPB)
		bits++;
	if (termios->c_cflag & PARENB)
		bits++;

	if (best_clk >= 0) {
		if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
			switch (srr + 1) {
			case 5:  smr_val |= SCSMR_SRC_5;  break;
			case 7:  smr_val |= SCSMR_SRC_7;  break;
			case 11: smr_val |= SCSMR_SRC_11; break;
			case 13: smr_val |= SCSMR_SRC_13; break;
			case 16: smr_val |= SCSMR_SRC_16; break;
			case 17: smr_val |= SCSMR_SRC_17; break;
			case 19: smr_val |= SCSMR_SRC_19; break;
			case 27: smr_val |= SCSMR_SRC_27; break;
			}
		smr_val |= cks;
		FUNC20(port, SCSCR, scr_val | s->hscif_tot);
		FUNC20(port, SCSMR, smr_val);
		FUNC20(port, SCBRR, brr);
		if (FUNC10(port, HSSRR)->size) {
			unsigned int hssrr = srr | HSCIF_SRE;
			/* Calculate deviation from intended rate at the
			 * center of the last stop bit in sampling clocks.
			 */
			int last_stop = bits * 2 - 1;
			int deviation = FUNC0(min_err * last_stop *
							  (int)(srr + 1),
							  2 * (int)baud);

			if (FUNC3(deviation) >= 2) {
				/* At least two sampling clocks off at the
				 * last stop bit; we can increase the error
				 * margin by shifting the sampling point.
				 */
				int shift = FUNC4(deviation / 2, -8, 7);

				hssrr |= (shift << HSCIF_SRHP_SHIFT) &
					 HSCIF_SRHP_MASK;
				hssrr |= HSCIF_SRDE;
			}
			FUNC20(port, HSSRR, hssrr);
		}

		/* Wait one bit interval */
		FUNC26((1000000 + (baud - 1)) / baud);
	} else {
		/* Don't touch the bit rate configuration */
		scr_val = s->cfg->scscr & (SCSCR_CKE1 | SCSCR_CKE0);
		smr_val |= FUNC19(port, SCSMR) &
			   (SCSMR_CKEDG | SCSMR_SRC_MASK | SCSMR_CKS);
		FUNC20(port, SCSCR, scr_val | s->hscif_tot);
		FUNC20(port, SCSMR, smr_val);
	}

	FUNC11(port, termios->c_cflag);

	port->status &= ~UPSTAT_AUTOCTS;
	s->autorts = false;
	reg = FUNC10(port, SCFCR);
	if (reg->size) {
		unsigned short ctrl = FUNC19(port, SCFCR);

		if ((port->flags & UPF_HARD_FLOW) &&
		    (termios->c_cflag & CRTSCTS)) {
			/* There is no CTS interrupt to restart the hardware */
			port->status |= UPSTAT_AUTOCTS;
			/* MCE is enabled when RTS is raised */
			s->autorts = true;
		}

		/*
		 * As we've done a sci_reset() above, ensure we don't
		 * interfere with the FIFOs while toggling MCE. As the
		 * reset values could still be set, simply mask them out.
		 */
		ctrl &= ~(SCFCR_RFRST | SCFCR_TFRST);

		FUNC20(port, SCFCR, ctrl);
	}
	if (port->flags & UPF_HARD_FLOW) {
		/* Refresh (Auto) RTS */
		FUNC17(port, port->mctrl);
	}

	scr_val |= SCSCR_RE | SCSCR_TE |
		   (s->cfg->scscr & ~(SCSCR_CKE1 | SCSCR_CKE0));
	FUNC20(port, SCSCR, scr_val | s->hscif_tot);
	if ((srr + 1 == 5) &&
	    (port->type == PORT_SCIFA || port->type == PORT_SCIFB)) {
		/*
		 * In asynchronous mode, when the sampling rate is 1/5, first
		 * received data may become invalid on some SCIFA and SCIFB.
		 * To avoid this problem wait more than 1 serial data time (1
		 * bit time x serial data number) after setting SCSCR.RE = 1.
		 */
		FUNC26(FUNC1(10 * 1000000, baud));
	}

	/*
	 * Calculate delay for 2 DMA buffers (4 FIFO).
	 * See serial_core.c::uart_update_timeout().
	 * With 10 bits (CS8), 250Hz, 115200 baud and 64 bytes FIFO, the above
	 * function calculates 1 jiffie for the data plus 5 jiffies for the
	 * "slop(e)." Then below we calculate 5 jiffies (20ms) for 2 DMA
	 * buffers (4 FIFO sizes), but when performing a faster transfer, the
	 * value obtained by this formula is too small. Therefore, if the value
	 * is smaller than 20ms, use 20ms as the timeout value for DMA.
	 */
	s->rx_frame = (10000 * bits) / (baud / 100);
#ifdef CONFIG_SERIAL_SH_SCI_DMA
	s->rx_timeout = s->buf_len_rx * 2 * s->rx_frame;
	if (s->rx_timeout < 20)
		s->rx_timeout = 20;
#endif

	if ((termios->c_cflag & CREAD) != 0)
		FUNC18(port);

	FUNC22(&port->lock, flags);

	FUNC12(s);

	if (FUNC2(port, termios->c_cflag))
		FUNC9(port);
}