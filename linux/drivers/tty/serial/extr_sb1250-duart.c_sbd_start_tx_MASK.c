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
struct uart_port {int line; } ;
struct sbd_port {scalar_t__ tx_stopped; } ;

/* Variables and functions */
 unsigned int M_DUART_IMR_TX ; 
 int /*<<< orphan*/  M_DUART_TX_EN ; 
 int /*<<< orphan*/  R_DUART_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 struct sbd_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbd_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbd_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport)
{
	struct sbd_port *sport = FUNC2(uport);
	unsigned int mask;

	/* Enable tx interrupts.  */
	mask = FUNC1(sport, FUNC0((uport->line) % 2));
	mask |= M_DUART_IMR_TX;
	FUNC4(sport, FUNC0((uport->line) % 2), mask);

	/* Go!, go!, go!...  */
	FUNC3(sport, R_DUART_CMD, M_DUART_TX_EN);
	sport->tx_stopped = 0;
}