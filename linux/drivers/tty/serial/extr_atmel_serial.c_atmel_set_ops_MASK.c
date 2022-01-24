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
struct uart_port {int dummy; } ;
struct atmel_uart_port {int /*<<< orphan*/ * release_tx; int /*<<< orphan*/ * schedule_tx; int /*<<< orphan*/ * prepare_tx; int /*<<< orphan*/ * release_rx; int /*<<< orphan*/ * schedule_rx; int /*<<< orphan*/ * prepare_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  atmel_prepare_rx_dma ; 
 int /*<<< orphan*/  atmel_prepare_rx_pdc ; 
 int /*<<< orphan*/  atmel_prepare_tx_dma ; 
 int /*<<< orphan*/  atmel_prepare_tx_pdc ; 
 int /*<<< orphan*/  atmel_release_rx_dma ; 
 int /*<<< orphan*/  atmel_release_rx_pdc ; 
 int /*<<< orphan*/  atmel_release_tx_dma ; 
 int /*<<< orphan*/  atmel_release_tx_pdc ; 
 int /*<<< orphan*/  atmel_rx_from_dma ; 
 int /*<<< orphan*/  atmel_rx_from_pdc ; 
 int /*<<< orphan*/  atmel_rx_from_ring ; 
 int /*<<< orphan*/  atmel_tx_chars ; 
 int /*<<< orphan*/  atmel_tx_dma ; 
 int /*<<< orphan*/  atmel_tx_pdc ; 
 scalar_t__ FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 struct atmel_uart_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC4(port);

	if (FUNC0(port)) {
		atmel_port->prepare_rx = &atmel_prepare_rx_dma;
		atmel_port->schedule_rx = &atmel_rx_from_dma;
		atmel_port->release_rx = &atmel_release_rx_dma;
	} else if (FUNC2(port)) {
		atmel_port->prepare_rx = &atmel_prepare_rx_pdc;
		atmel_port->schedule_rx = &atmel_rx_from_pdc;
		atmel_port->release_rx = &atmel_release_rx_pdc;
	} else {
		atmel_port->prepare_rx = NULL;
		atmel_port->schedule_rx = &atmel_rx_from_ring;
		atmel_port->release_rx = NULL;
	}

	if (FUNC1(port)) {
		atmel_port->prepare_tx = &atmel_prepare_tx_dma;
		atmel_port->schedule_tx = &atmel_tx_dma;
		atmel_port->release_tx = &atmel_release_tx_dma;
	} else if (FUNC3(port)) {
		atmel_port->prepare_tx = &atmel_prepare_tx_pdc;
		atmel_port->schedule_tx = &atmel_tx_pdc;
		atmel_port->release_tx = &atmel_release_tx_pdc;
	} else {
		atmel_port->prepare_tx = NULL;
		atmel_port->schedule_tx = &atmel_tx_chars;
		atmel_port->release_tx = NULL;
	}
}