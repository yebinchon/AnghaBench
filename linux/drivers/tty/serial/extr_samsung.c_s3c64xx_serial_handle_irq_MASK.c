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
struct s3c24xx_uart_port {struct uart_port port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int S3C64XX_UINTM_RXD_MSK ; 
 unsigned int S3C64XX_UINTM_TXD_MSK ; 
 int /*<<< orphan*/  S3C64XX_UINTP ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *id)
{
	struct s3c24xx_uart_port *ourport = id;
	struct uart_port *port = &ourport->port;
	unsigned int pend = FUNC0(port, S3C64XX_UINTP);
	irqreturn_t ret = IRQ_HANDLED;

	if (pend & S3C64XX_UINTM_RXD_MSK) {
		ret = FUNC1(irq, id);
		FUNC3(port, S3C64XX_UINTP, S3C64XX_UINTM_RXD_MSK);
	}
	if (pend & S3C64XX_UINTM_TXD_MSK) {
		ret = FUNC2(irq, id);
		FUNC3(port, S3C64XX_UINTP, S3C64XX_UINTM_TXD_MSK);
	}
	return ret;
}