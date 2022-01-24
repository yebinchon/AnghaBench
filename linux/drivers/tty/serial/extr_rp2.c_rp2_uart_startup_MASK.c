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
struct rp2_uart_port {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP2_CHAN_STAT ; 
 int /*<<< orphan*/  RP2_TXRX_CTL ; 
 int /*<<< orphan*/  RP2_TXRX_CTL_MSRIRQ_m ; 
 int /*<<< orphan*/  RP2_TXRX_CTL_RXIRQ_m ; 
 int /*<<< orphan*/  RP2_TXRX_CTL_RX_TRIG_1 ; 
 int /*<<< orphan*/  RP2_TXRX_CTL_RX_TRIG_m ; 
 struct rp2_uart_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct rp2_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct rp2_uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rp2_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	struct rp2_uart_port *up = FUNC0(port);

	FUNC1(up);
	FUNC3(up, RP2_TXRX_CTL, RP2_TXRX_CTL_MSRIRQ_m, RP2_TXRX_CTL_RXIRQ_m);
	FUNC3(up, RP2_TXRX_CTL, RP2_TXRX_CTL_RX_TRIG_m,
		RP2_TXRX_CTL_RX_TRIG_1);
	FUNC3(up, RP2_CHAN_STAT, 0, 0);
	FUNC2(up, up->idx, 1);

	return 0;
}