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
struct uart_8250_port {TYPE_1__* dma; } ;
struct TYPE_2__ {int (* rx_dma ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
#define  UART_IIR_RLSI 129 
#define  UART_IIR_RX_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int FUNC1 (struct uart_8250_port*) ; 

__attribute__((used)) static bool FUNC2(struct uart_8250_port *up, unsigned int iir)
{
	switch (iir & 0x3f) {
	case UART_IIR_RX_TIMEOUT:
		FUNC0(up);
		/* fall-through */
	case UART_IIR_RLSI:
		return true;
	}
	return up->dma->rx_dma(up);
}