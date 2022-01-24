#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct uart_port {unsigned long uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct sirfsoc_uart_port {int rx_period_time; scalar_t__ rx_dma_chan; scalar_t__ tx_dma_chan; TYPE_1__* uart_reg; scalar_t__ ms_enabled; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_tx_rx_en; int /*<<< orphan*/  sirfsoc_tx_fifo_op; int /*<<< orphan*/  sirfsoc_rx_fifo_ctrl; int /*<<< orphan*/  sirfsoc_tx_fifo_ctrl; int /*<<< orphan*/  sirfsoc_rx_dma_io_ctrl; int /*<<< orphan*/  sirfsoc_tx_dma_io_ctrl; int /*<<< orphan*/  sirfsoc_async_param_reg; int /*<<< orphan*/  sirfsoc_rx_frame_ctrl; int /*<<< orphan*/  sirfsoc_tx_frame_ctrl; int /*<<< orphan*/  sirfsoc_line_ctrl; int /*<<< orphan*/  sirfsoc_mode2; int /*<<< orphan*/  sirfsoc_divisor; } ;
struct sirfsoc_int_en {int sirfsoc_rx_oflow_en; int sirfsoc_frm_err_en; int sirfsoc_parity_err_en; int sirfsoc_rxd_brk_en; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_4__ {unsigned long baud_rate; unsigned int reg_val; } ;
struct TYPE_3__ {scalar_t__ uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CREAD ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long SIRFSOC_USP_ASYNC_DIV2_MASK ; 
 unsigned long SIRFSOC_USP_ASYNC_DIV2_OFFSET ; 
 unsigned int SIRFSOC_USP_MODE2_CLK_DIVISOR_MASK ; 
 unsigned int SIRFSOC_USP_MODE2_CLK_DIVISOR_OFFSET ; 
 int SIRFSOC_USP_MODE2_RXD_DELAY_OFFSET ; 
 int SIRFSOC_USP_MODE2_TXD_DELAY_OFFSET ; 
 unsigned int SIRFSOC_USP_RX_CLK_DIVISOR_OFFSET ; 
 unsigned int SIRFSOC_USP_RX_DATA_LEN_OFFSET ; 
 unsigned int SIRFSOC_USP_RX_FRAME_LEN_OFFSET ; 
 unsigned int SIRFSOC_USP_RX_SHIFTER_LEN_OFFSET ; 
 unsigned int SIRFSOC_USP_TX_CLK_DIVISOR_OFFSET ; 
 unsigned int SIRFSOC_USP_TX_DATA_LEN_OFFSET ; 
 unsigned int SIRFSOC_USP_TX_FRAME_LEN_OFFSET ; 
 unsigned int SIRFSOC_USP_TX_SHIFTER_LEN_OFFSET ; 
 unsigned long SIRFUART_DATA_BIT_LEN_5 ; 
 unsigned long SIRFUART_DATA_BIT_LEN_6 ; 
 unsigned long SIRFUART_DATA_BIT_LEN_7 ; 
 unsigned long SIRFUART_DATA_BIT_LEN_8 ; 
 unsigned long SIRFUART_DMA_MODE ; 
 int SIRFUART_DUMMY_READ ; 
 unsigned long SIRFUART_FIFO_START ; 
 int FUNC1 (struct uart_port*) ; 
 unsigned long SIRFUART_IO_MODE ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long SIRFUART_RX_EN ; 
 unsigned long SIRFUART_STICK_BIT_EVEN ; 
 unsigned long SIRFUART_STICK_BIT_MARK ; 
 unsigned long SIRFUART_STICK_BIT_ODD ; 
 unsigned long SIRFUART_STICK_BIT_SPACE ; 
 unsigned long SIRFUART_STOP_BIT_LEN_2 ; 
 unsigned long SIRFUART_TX_EN ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned long) ; 
 unsigned long SIRF_BAUD_RATE_SUPPORT_NR ; 
 scalar_t__ SIRF_REAL_UART ; 
 scalar_t__ FUNC5 (struct uart_port*,int) ; 
 TYPE_2__* baudrate_to_regv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 
 unsigned int FUNC11 (unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sirfsoc_uart_port* FUNC14 (struct uart_port*) ; 
 scalar_t__ FUNC15 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC16 (struct ktermios*,unsigned long,unsigned long) ; 
 unsigned long FUNC17 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct uart_port*,int,unsigned long) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC21(struct uart_port *port,
				       struct ktermios *termios,
				       struct ktermios *old)
{
	struct sirfsoc_uart_port *sirfport = FUNC14(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;
	unsigned long	config_reg = 0;
	unsigned long	baud_rate;
	unsigned long	set_baud;
	unsigned long	flags;
	unsigned long	ic;
	unsigned int	clk_div_reg = 0;
	unsigned long	txfifo_op_reg, ioclk_rate;
	unsigned long	rx_time_out;
	int		threshold_div;
	u32		data_bit_len, stop_bit_len, len_val;
	unsigned long	sample_div_reg = 0xf;
	ioclk_rate	= port->uartclk;

	switch (termios->c_cflag & CSIZE) {
	default:
	case CS8:
		data_bit_len = 8;
		config_reg |= SIRFUART_DATA_BIT_LEN_8;
		break;
	case CS7:
		data_bit_len = 7;
		config_reg |= SIRFUART_DATA_BIT_LEN_7;
		break;
	case CS6:
		data_bit_len = 6;
		config_reg |= SIRFUART_DATA_BIT_LEN_6;
		break;
	case CS5:
		data_bit_len = 5;
		config_reg |= SIRFUART_DATA_BIT_LEN_5;
		break;
	}
	if (termios->c_cflag & CSTOPB) {
		config_reg |= SIRFUART_STOP_BIT_LEN_2;
		stop_bit_len = 2;
	} else
		stop_bit_len = 1;

	FUNC12(&port->lock, flags);
	port->read_status_mask = uint_en->sirfsoc_rx_oflow_en;
	port->ignore_status_mask = 0;
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		if (termios->c_iflag & INPCK)
			port->read_status_mask |= uint_en->sirfsoc_frm_err_en |
				uint_en->sirfsoc_parity_err_en;
	} else {
		if (termios->c_iflag & INPCK)
			port->read_status_mask |= uint_en->sirfsoc_frm_err_en;
	}
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
			port->read_status_mask |= uint_en->sirfsoc_rxd_brk_en;
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |=
				uint_en->sirfsoc_frm_err_en |
				uint_en->sirfsoc_parity_err_en;
		if (termios->c_cflag & PARENB) {
			if (termios->c_cflag & CMSPAR) {
				if (termios->c_cflag & PARODD)
					config_reg |= SIRFUART_STICK_BIT_MARK;
				else
					config_reg |= SIRFUART_STICK_BIT_SPACE;
			} else {
				if (termios->c_cflag & PARODD)
					config_reg |= SIRFUART_STICK_BIT_ODD;
				else
					config_reg |= SIRFUART_STICK_BIT_EVEN;
			}
		}
	} else {
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |=
				uint_en->sirfsoc_frm_err_en;
		if (termios->c_cflag & PARENB)
			FUNC6(port->dev,
					"USP-UART not support parity err\n");
	}
	if (termios->c_iflag & IGNBRK) {
		port->ignore_status_mask |=
			uint_en->sirfsoc_rxd_brk_en;
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |=
				uint_en->sirfsoc_rx_oflow_en;
	}
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= SIRFUART_DUMMY_READ;
	/* Hardware Flow Control Settings */
	if (FUNC5(port, termios->c_cflag)) {
		if (!sirfport->ms_enabled)
			FUNC10(port);
	} else {
		if (sirfport->ms_enabled)
			FUNC9(port);
	}
	baud_rate = FUNC17(port, termios, old, 0, 4000000);
	if (ioclk_rate == 150000000) {
		for (ic = 0; ic < SIRF_BAUD_RATE_SUPPORT_NR; ic++)
			if (baud_rate == baudrate_to_regv[ic].baud_rate)
				clk_div_reg = baudrate_to_regv[ic].reg_val;
	}
	set_baud = baud_rate;
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		if (FUNC19(clk_div_reg == 0))
			clk_div_reg = FUNC8(baud_rate,
					ioclk_rate, &set_baud);
		FUNC20(port, ureg->sirfsoc_divisor, clk_div_reg);
	} else {
		clk_div_reg = FUNC11(baud_rate,
				ioclk_rate, &sample_div_reg);
		sample_div_reg--;
		set_baud = ((ioclk_rate / (clk_div_reg+1) - 1) /
				(sample_div_reg + 1));
		/* setting usp mode 2 */
		len_val = ((1 << SIRFSOC_USP_MODE2_RXD_DELAY_OFFSET) |
				(1 << SIRFSOC_USP_MODE2_TXD_DELAY_OFFSET));
		len_val |= ((clk_div_reg & SIRFSOC_USP_MODE2_CLK_DIVISOR_MASK)
				<< SIRFSOC_USP_MODE2_CLK_DIVISOR_OFFSET);
		FUNC20(port, ureg->sirfsoc_mode2, len_val);
	}
	if (FUNC15(termios))
		FUNC16(termios, set_baud, set_baud);
	/* set receive timeout && data bits len */
	rx_time_out = FUNC0(set_baud, 20000);
	rx_time_out = FUNC2(rx_time_out);
	txfifo_op_reg = FUNC7(port, ureg->sirfsoc_tx_fifo_op);
	FUNC20(port, ureg->sirfsoc_tx_fifo_op,
			(txfifo_op_reg & ~SIRFUART_FIFO_START));
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		config_reg |= FUNC3(rx_time_out);
		FUNC20(port, ureg->sirfsoc_line_ctrl, config_reg);
	} else {
		/*tx frame ctrl*/
		len_val = (data_bit_len - 1) << SIRFSOC_USP_TX_DATA_LEN_OFFSET;
		len_val |= (data_bit_len + 1 + stop_bit_len - 1) <<
				SIRFSOC_USP_TX_FRAME_LEN_OFFSET;
		len_val |= ((data_bit_len - 1) <<
				SIRFSOC_USP_TX_SHIFTER_LEN_OFFSET);
		len_val |= (((clk_div_reg & 0xc00) >> 10) <<
				SIRFSOC_USP_TX_CLK_DIVISOR_OFFSET);
		FUNC20(port, ureg->sirfsoc_tx_frame_ctrl, len_val);
		/*rx frame ctrl*/
		len_val = (data_bit_len - 1) << SIRFSOC_USP_RX_DATA_LEN_OFFSET;
		len_val |= (data_bit_len + 1 + stop_bit_len - 1) <<
				SIRFSOC_USP_RX_FRAME_LEN_OFFSET;
		len_val |= (data_bit_len - 1) <<
				SIRFSOC_USP_RX_SHIFTER_LEN_OFFSET;
		len_val |= (((clk_div_reg & 0xf000) >> 12) <<
				SIRFSOC_USP_RX_CLK_DIVISOR_OFFSET);
		FUNC20(port, ureg->sirfsoc_rx_frame_ctrl, len_val);
		/*async param*/
		FUNC20(port, ureg->sirfsoc_async_param_reg,
			(FUNC4(rx_time_out)) |
			(sample_div_reg & SIRFSOC_USP_ASYNC_DIV2_MASK) <<
			SIRFSOC_USP_ASYNC_DIV2_OFFSET);
	}
	if (sirfport->tx_dma_chan)
		FUNC20(port, ureg->sirfsoc_tx_dma_io_ctrl, SIRFUART_DMA_MODE);
	else
		FUNC20(port, ureg->sirfsoc_tx_dma_io_ctrl, SIRFUART_IO_MODE);
	if (sirfport->rx_dma_chan)
		FUNC20(port, ureg->sirfsoc_rx_dma_io_ctrl,
			FUNC7(port, ureg->sirfsoc_rx_dma_io_ctrl) &
			~SIRFUART_IO_MODE);
	else
		FUNC20(port, ureg->sirfsoc_rx_dma_io_ctrl,
			FUNC7(port, ureg->sirfsoc_rx_dma_io_ctrl) |
			SIRFUART_IO_MODE);
	sirfport->rx_period_time = 20000000;
	/* Reset Rx/Tx FIFO Threshold level for proper baudrate */
	if (set_baud < 1000000)
		threshold_div = 1;
	else
		threshold_div = 2;
	FUNC20(port, ureg->sirfsoc_tx_fifo_ctrl,
				FUNC1(port) / threshold_div);
	FUNC20(port, ureg->sirfsoc_rx_fifo_ctrl,
				FUNC1(port) / threshold_div);
	txfifo_op_reg |= SIRFUART_FIFO_START;
	FUNC20(port, ureg->sirfsoc_tx_fifo_op, txfifo_op_reg);
	FUNC18(port, termios->c_cflag, set_baud);
	FUNC20(port, ureg->sirfsoc_tx_rx_en, SIRFUART_TX_EN | SIRFUART_RX_EN);
	FUNC13(&port->lock, flags);
}