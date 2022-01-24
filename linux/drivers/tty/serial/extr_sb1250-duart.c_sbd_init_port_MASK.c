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
struct sbd_port {int initialised; struct uart_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_DUART_AUXCTL_X ; 
 int /*<<< orphan*/  R_DUART_CMD ; 
 int /*<<< orphan*/  R_DUART_FULL_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R_DUART_MODE_REG_1 ; 
 int /*<<< orphan*/  R_DUART_MODE_REG_2 ; 
 int /*<<< orphan*/  R_DUART_OPCR_X ; 
 int V_DUART_BITS_PER_CHAR_8 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int V_DUART_MISC_CMD_RESET_RX ; 
 int V_DUART_MISC_CMD_RESET_TX ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbd_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sbd_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sbd_port *sport)
{
	struct uart_port *uport = &sport->port;

	if (sport->initialised)
		return;

	/* There is no DUART reset feature, so just set some sane defaults.  */
	FUNC3(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_TX);
	FUNC3(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_RX);
	FUNC3(sport, R_DUART_MODE_REG_1, V_DUART_BITS_PER_CHAR_8);
	FUNC3(sport, R_DUART_MODE_REG_2, 0);
	FUNC3(sport, R_DUART_FULL_CTL,
		     FUNC1(0) | FUNC2(15));
	FUNC3(sport, R_DUART_OPCR_X, 0);
	FUNC3(sport, R_DUART_AUXCTL_X, 0);
	FUNC4(sport, FUNC0((uport->line) % 2), 0);

	sport->initialised = 1;
}