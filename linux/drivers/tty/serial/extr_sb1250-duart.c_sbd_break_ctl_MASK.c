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
struct sbd_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_DUART_CMD ; 
 int /*<<< orphan*/  V_DUART_MISC_CMD_START_BREAK ; 
 int /*<<< orphan*/  V_DUART_MISC_CMD_STOP_BREAK ; 
 struct sbd_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbd_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *uport, int break_state)
{
	struct sbd_port *sport = FUNC0(uport);

	if (break_state == -1)
		FUNC1(sport, R_DUART_CMD, V_DUART_MISC_CMD_START_BREAK);
	else
		FUNC1(sport, R_DUART_CMD, V_DUART_MISC_CMD_STOP_BREAK);
}