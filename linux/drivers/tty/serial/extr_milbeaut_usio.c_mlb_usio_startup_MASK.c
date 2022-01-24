#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int line; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned char MLB_USIO_ESCR_FLWEN ; 
 int MLB_USIO_FCR_FCL1 ; 
 int MLB_USIO_FCR_FCL2 ; 
 int MLB_USIO_FCR_FE1 ; 
 int MLB_USIO_FCR_FE2 ; 
 int MLB_USIO_FCR_FRIIE ; 
 scalar_t__ MLB_USIO_REG_ESCR ; 
 scalar_t__ MLB_USIO_REG_FBYTE ; 
 scalar_t__ MLB_USIO_REG_FCR ; 
 scalar_t__ MLB_USIO_REG_SCR ; 
 scalar_t__ MLB_USIO_REG_SSR ; 
 unsigned char MLB_USIO_SCR_RIE ; 
 unsigned char MLB_USIO_SCR_RXE ; 
 unsigned char MLB_USIO_SCR_TBIE ; 
 unsigned char MLB_USIO_SCR_TXE ; 
 unsigned char MLB_USIO_SCR_UPCL ; 
 unsigned char MLB_USIO_SSR_REC ; 
 size_t RX ; 
 size_t TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/ ** mlb_usio_irq ; 
 int /*<<< orphan*/  mlb_usio_rx_irq ; 
 int /*<<< orphan*/  mlb_usio_tx_irq ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct uart_port *port)
{
	const char *portname = FUNC7(port->dev)->name;
	unsigned long flags;
	int ret, index = port->line;
	unsigned char  escr;

	ret = FUNC4(mlb_usio_irq[index][RX], mlb_usio_rx_irq,
				0, portname, port);
	if (ret)
		return ret;
	ret = FUNC4(mlb_usio_irq[index][TX], mlb_usio_tx_irq,
				0, portname, port);
	if (ret) {
		FUNC1(mlb_usio_irq[index][RX], port);
		return ret;
	}

	escr = FUNC3(port->membase + MLB_USIO_REG_ESCR);
	if (FUNC2(port->dev->of_node, "auto-flow-control"))
		escr |= MLB_USIO_ESCR_FLWEN;
	FUNC5(&port->lock, flags);
	FUNC8(0, port->membase + MLB_USIO_REG_SCR);
	FUNC8(escr, port->membase + MLB_USIO_REG_ESCR);
	FUNC8(MLB_USIO_SCR_UPCL, port->membase + MLB_USIO_REG_SCR);
	FUNC8(MLB_USIO_SSR_REC, port->membase + MLB_USIO_REG_SSR);
	FUNC9(0, port->membase + MLB_USIO_REG_FCR);
	FUNC9(MLB_USIO_FCR_FCL1 | MLB_USIO_FCR_FCL2,
	       port->membase + MLB_USIO_REG_FCR);
	FUNC9(MLB_USIO_FCR_FE1 | MLB_USIO_FCR_FE2 | MLB_USIO_FCR_FRIIE,
	       port->membase + MLB_USIO_REG_FCR);
	FUNC9(0, port->membase + MLB_USIO_REG_FBYTE);
	FUNC9(FUNC0(12), port->membase + MLB_USIO_REG_FBYTE);

	FUNC8(MLB_USIO_SCR_TXE  | MLB_USIO_SCR_RIE | MLB_USIO_SCR_TBIE |
	       MLB_USIO_SCR_RXE, port->membase + MLB_USIO_REG_SCR);
	FUNC6(&port->lock, flags);

	return 0;
}