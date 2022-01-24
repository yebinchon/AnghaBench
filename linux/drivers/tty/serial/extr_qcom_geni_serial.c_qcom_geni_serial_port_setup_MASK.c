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
typedef  scalar_t__ u32 ;
struct uart_port {int /*<<< orphan*/  dev; scalar_t__ membase; } ;
struct qcom_geni_serial_port {int tx_bytes_pw; int rx_bytes_pw; int setup; int /*<<< orphan*/  rx_fifo; scalar_t__ rx_fifo_depth; int /*<<< orphan*/  se; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 int CONSOLE_RX_BYTES_PW ; 
 scalar_t__ DEFAULT_BITS_PER_CHAR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GENI_SE_FIFO ; 
 scalar_t__ GENI_SE_UART ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SE_UART_RX_STALE_CNT ; 
 scalar_t__ STALE_TIMEOUT ; 
 int /*<<< orphan*/  UART_RX_WM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qcom_geni_serial_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 struct qcom_geni_serial_port* FUNC9 (struct uart_port*,struct uart_port*) ; 
 scalar_t__ FUNC10 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct uart_port *uport)
{
	struct qcom_geni_serial_port *port = FUNC9(uport, uport);
	u32 rxstale = DEFAULT_BITS_PER_CHAR * STALE_TIMEOUT;
	u32 proto;

	if (FUNC10(uport)) {
		port->tx_bytes_pw = 1;
		port->rx_bytes_pw = CONSOLE_RX_BYTES_PW;
	} else {
		port->tx_bytes_pw = 4;
		port->rx_bytes_pw = 4;
	}

	proto = FUNC4(&port->se);
	if (proto != GENI_SE_UART) {
		FUNC0(uport->dev, "Invalid FW loaded, proto: %d\n", proto);
		return -ENXIO;
	}

	FUNC8(uport);

	FUNC6(port);

	FUNC11(rxstale, uport->membase + SE_UART_RX_STALE_CNT);
	/*
	 * Make an unconditional cancel on the main sequencer to reset
	 * it else we could end up in data loss scenarios.
	 */
	if (FUNC10(uport))
		FUNC7(uport);
	FUNC2(&port->se, BITS_PER_BYTE, port->tx_bytes_pw,
						false, true, false);
	FUNC2(&port->se, BITS_PER_BYTE, port->rx_bytes_pw,
						false, false, true);
	FUNC3(&port->se, UART_RX_WM, port->rx_fifo_depth - 2);
	FUNC5(&port->se, GENI_SE_FIFO);
	if (!FUNC10(uport)) {
		port->rx_fifo = FUNC1(uport->dev,
			port->rx_fifo_depth, sizeof(u32), GFP_KERNEL);
		if (!port->rx_fifo)
			return -ENOMEM;
	}
	port->setup = true;

	return 0;
}