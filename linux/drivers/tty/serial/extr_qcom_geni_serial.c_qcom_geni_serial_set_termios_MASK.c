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
typedef  int u32 ;
struct uart_port {unsigned long uartclk; scalar_t__ membase; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;
struct qcom_geni_serial_port {unsigned int baud; int loopback; TYPE_1__ se; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 unsigned int CLK_DIV_SHFT ; 
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 scalar_t__ GENI_SER_M_CLK_CFG ; 
 scalar_t__ GENI_SER_S_CLK_CFG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int PARENB ; 
 int PARODD ; 
 int PAR_CALC_EN ; 
 int PAR_EVEN ; 
 int PAR_ODD ; 
 int PAR_SPACE ; 
 int SER_CLK_EN ; 
 scalar_t__ SE_UART_LOOPBACK_CFG ; 
 scalar_t__ SE_UART_RX_PARITY_CFG ; 
 scalar_t__ SE_UART_RX_TRANS_CFG ; 
 scalar_t__ SE_UART_RX_WORD_LEN ; 
 scalar_t__ SE_UART_TX_PARITY_CFG ; 
 scalar_t__ SE_UART_TX_STOP_BIT_LEN ; 
 scalar_t__ SE_UART_TX_TRANS_CFG ; 
 scalar_t__ SE_UART_TX_WORD_LEN ; 
 int TX_STOP_BIT_LEN_1 ; 
 int TX_STOP_BIT_LEN_2 ; 
 int UART_CTS_MASK ; 
 int UART_OVERSAMPLING ; 
 int UART_RX_PAR_EN ; 
 int UART_TX_PAR_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (TYPE_1__*) ; 
 unsigned long FUNC4 (unsigned int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 int FUNC7 (scalar_t__) ; 
 struct qcom_geni_serial_port* FUNC8 (struct uart_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 unsigned int FUNC10 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct uart_port *uport,
				struct ktermios *termios, struct ktermios *old)
{
	unsigned int baud;
	u32 bits_per_char;
	u32 tx_trans_cfg;
	u32 tx_parity_cfg;
	u32 rx_trans_cfg;
	u32 rx_parity_cfg;
	u32 stop_bit_len;
	unsigned int clk_div;
	u32 ser_clk_cfg;
	struct qcom_geni_serial_port *port = FUNC8(uport, uport);
	unsigned long clk_rate;
	u32 ver, sampling_rate;

	FUNC6(uport);
	/* baud rate */
	baud = FUNC10(uport, termios, old, 300, 4000000);
	port->baud = baud;

	sampling_rate = UART_OVERSAMPLING;
	/* Sampling rate is halved for IP versions >= 2.5 */
	ver = FUNC3(&port->se);
	if (FUNC0(ver) >= 2 && FUNC1(ver) >= 5)
		sampling_rate /= 2;

	clk_rate = FUNC4(baud, sampling_rate, &clk_div);
	if (!clk_rate)
		goto out_restart_rx;

	uport->uartclk = clk_rate;
	FUNC2(port->se.clk, clk_rate);
	ser_clk_cfg = SER_CLK_EN;
	ser_clk_cfg |= clk_div << CLK_DIV_SHFT;

	/* parity */
	tx_trans_cfg = FUNC7(uport->membase + SE_UART_TX_TRANS_CFG);
	tx_parity_cfg = FUNC7(uport->membase + SE_UART_TX_PARITY_CFG);
	rx_trans_cfg = FUNC7(uport->membase + SE_UART_RX_TRANS_CFG);
	rx_parity_cfg = FUNC7(uport->membase + SE_UART_RX_PARITY_CFG);
	if (termios->c_cflag & PARENB) {
		tx_trans_cfg |= UART_TX_PAR_EN;
		rx_trans_cfg |= UART_RX_PAR_EN;
		tx_parity_cfg |= PAR_CALC_EN;
		rx_parity_cfg |= PAR_CALC_EN;
		if (termios->c_cflag & PARODD) {
			tx_parity_cfg |= PAR_ODD;
			rx_parity_cfg |= PAR_ODD;
		} else if (termios->c_cflag & CMSPAR) {
			tx_parity_cfg |= PAR_SPACE;
			rx_parity_cfg |= PAR_SPACE;
		} else {
			tx_parity_cfg |= PAR_EVEN;
			rx_parity_cfg |= PAR_EVEN;
		}
	} else {
		tx_trans_cfg &= ~UART_TX_PAR_EN;
		rx_trans_cfg &= ~UART_RX_PAR_EN;
		tx_parity_cfg &= ~PAR_CALC_EN;
		rx_parity_cfg &= ~PAR_CALC_EN;
	}

	/* bits per char */
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		bits_per_char = 5;
		break;
	case CS6:
		bits_per_char = 6;
		break;
	case CS7:
		bits_per_char = 7;
		break;
	case CS8:
	default:
		bits_per_char = 8;
		break;
	}

	/* stop bits */
	if (termios->c_cflag & CSTOPB)
		stop_bit_len = TX_STOP_BIT_LEN_2;
	else
		stop_bit_len = TX_STOP_BIT_LEN_1;

	/* flow control, clear the CTS_MASK bit if using flow control. */
	if (termios->c_cflag & CRTSCTS)
		tx_trans_cfg &= ~UART_CTS_MASK;
	else
		tx_trans_cfg |= UART_CTS_MASK;

	if (baud)
		FUNC11(uport, termios->c_cflag, baud);

	if (!FUNC9(uport))
		FUNC12(port->loopback,
				uport->membase + SE_UART_LOOPBACK_CFG);
	FUNC12(tx_trans_cfg, uport->membase + SE_UART_TX_TRANS_CFG);
	FUNC12(tx_parity_cfg, uport->membase + SE_UART_TX_PARITY_CFG);
	FUNC12(rx_trans_cfg, uport->membase + SE_UART_RX_TRANS_CFG);
	FUNC12(rx_parity_cfg, uport->membase + SE_UART_RX_PARITY_CFG);
	FUNC12(bits_per_char, uport->membase + SE_UART_TX_WORD_LEN);
	FUNC12(bits_per_char, uport->membase + SE_UART_RX_WORD_LEN);
	FUNC12(stop_bit_len, uport->membase + SE_UART_TX_STOP_BIT_LEN);
	FUNC12(ser_clk_cfg, uport->membase + GENI_SER_M_CLK_CFG);
	FUNC12(ser_clk_cfg, uport->membase + GENI_SER_S_CLK_CFG);
out_restart_rx:
	FUNC5(uport);
}