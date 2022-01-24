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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  read_status_mask; } ;
struct msm_dma {scalar_t__ chan; } ;
struct msm_port {struct msm_dma rx_dma; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int /*<<< orphan*/  UART_MR1 ; 
 unsigned int UART_MR1_CTS_CTL ; 
 unsigned int UART_MR1_RX_RDY_CTL ; 
 int /*<<< orphan*/  UART_MR2 ; 
 unsigned int UART_MR2_BITS_PER_CHAR ; 
 unsigned int UART_MR2_BITS_PER_CHAR_5 ; 
 unsigned int UART_MR2_BITS_PER_CHAR_6 ; 
 unsigned int UART_MR2_BITS_PER_CHAR_7 ; 
 unsigned int UART_MR2_BITS_PER_CHAR_8 ; 
 unsigned int UART_MR2_PARITY_MODE ; 
 unsigned int UART_MR2_PARITY_MODE_EVEN ; 
 unsigned int UART_MR2_PARITY_MODE_ODD ; 
 unsigned int UART_MR2_PARITY_MODE_SPACE ; 
 unsigned int UART_MR2_STOP_BIT_LEN_ONE ; 
 unsigned int UART_MR2_STOP_BIT_LEN_TWO ; 
 int /*<<< orphan*/  UART_SR_PAR_FRAME_ERR ; 
 int /*<<< orphan*/  UART_SR_RX_BREAK ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct uart_port*,unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,struct msm_dma*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC9 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC10 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC12(struct uart_port *port, struct ktermios *termios,
			    struct ktermios *old)
{
	struct msm_port *msm_port = FUNC0(port);
	struct msm_dma *dma = &msm_port->rx_dma;
	unsigned long flags;
	unsigned int baud, mr;

	FUNC6(&port->lock, flags);

	if (dma->chan) /* Terminate if any */
		FUNC4(port, dma);

	/* calculate and set baud rate */
	baud = FUNC10(port, termios, old, 300, 4000000);
	baud = FUNC2(port, baud, &flags);
	if (FUNC8(termios))
		FUNC9(termios, baud, baud);

	/* calculate parity */
	mr = FUNC1(port, UART_MR2);
	mr &= ~UART_MR2_PARITY_MODE;
	if (termios->c_cflag & PARENB) {
		if (termios->c_cflag & PARODD)
			mr |= UART_MR2_PARITY_MODE_ODD;
		else if (termios->c_cflag & CMSPAR)
			mr |= UART_MR2_PARITY_MODE_SPACE;
		else
			mr |= UART_MR2_PARITY_MODE_EVEN;
	}

	/* calculate bits per char */
	mr &= ~UART_MR2_BITS_PER_CHAR;
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		mr |= UART_MR2_BITS_PER_CHAR_5;
		break;
	case CS6:
		mr |= UART_MR2_BITS_PER_CHAR_6;
		break;
	case CS7:
		mr |= UART_MR2_BITS_PER_CHAR_7;
		break;
	case CS8:
	default:
		mr |= UART_MR2_BITS_PER_CHAR_8;
		break;
	}

	/* calculate stop bits */
	mr &= ~(UART_MR2_STOP_BIT_LEN_ONE | UART_MR2_STOP_BIT_LEN_TWO);
	if (termios->c_cflag & CSTOPB)
		mr |= UART_MR2_STOP_BIT_LEN_TWO;
	else
		mr |= UART_MR2_STOP_BIT_LEN_ONE;

	/* set parity, bits per char, and stop bit */
	FUNC5(port, mr, UART_MR2);

	/* calculate and set hardware flow control */
	mr = FUNC1(port, UART_MR1);
	mr &= ~(UART_MR1_CTS_CTL | UART_MR1_RX_RDY_CTL);
	if (termios->c_cflag & CRTSCTS) {
		mr |= UART_MR1_CTS_CTL;
		mr |= UART_MR1_RX_RDY_CTL;
	}
	FUNC5(port, mr, UART_MR1);

	/* Configure status bits to ignore based on termio flags. */
	port->read_status_mask = 0;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= UART_SR_PAR_FRAME_ERR;
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
		port->read_status_mask |= UART_SR_RX_BREAK;

	FUNC11(port, termios->c_cflag, baud);

	/* Try to use DMA */
	FUNC3(msm_port);

	FUNC7(&port->lock, flags);
}