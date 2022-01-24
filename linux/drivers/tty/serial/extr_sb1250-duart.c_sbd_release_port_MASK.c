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
struct uart_port {int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; } ;
struct sbd_port {int /*<<< orphan*/ * memctrl; struct sbd_duart* duart; } ;
struct sbd_duart {int /*<<< orphan*/  mapctrl; int /*<<< orphan*/  map_guard; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUART_CHANREG_SPACING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sbd_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *uport)
{
	struct sbd_port *sport = FUNC3(uport);
	struct sbd_duart *duart = sport->duart;

	FUNC0(sport->memctrl);
	sport->memctrl = NULL;
	FUNC0(uport->membase);
	uport->membase = NULL;

	if(FUNC1(&duart->map_guard))
		FUNC2(duart->mapctrl, DUART_CHANREG_SPACING);
	FUNC2(uport->mapbase, DUART_CHANREG_SPACING);
}