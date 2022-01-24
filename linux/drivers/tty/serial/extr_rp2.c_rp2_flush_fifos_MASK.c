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
struct rp2_uart_port {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RP2_UART_CTL ; 
 int RP2_UART_CTL_FLUSH_RX_m ; 
 int RP2_UART_CTL_FLUSH_TX_m ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rp2_uart_port*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rp2_uart_port*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct rp2_uart_port *up)
{
	FUNC2(up, RP2_UART_CTL,
		    RP2_UART_CTL_FLUSH_RX_m | RP2_UART_CTL_FLUSH_TX_m);
	FUNC0(up->base + RP2_UART_CTL);
	FUNC3(10);
	FUNC1(up, RP2_UART_CTL,
		    RP2_UART_CTL_FLUSH_RX_m | RP2_UART_CTL_FLUSH_TX_m);
}