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
typedef  int u8 ;
struct uart_port {int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  regmap; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int const SC16IS7XX_REG_SHIFT ; 
 int const SC16IS7XX_THR_REG ; 
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, u8 to_send)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);
	const u8 line = FUNC3(port);
	u8 addr = (SC16IS7XX_THR_REG << SC16IS7XX_REG_SHIFT) | line;

	/*
	 * Don't send zero-length data, at least on SPI it confuses the chip
	 * delivering wrong TXLVL data.
	 */
	if (FUNC4(!to_send))
		return;

	FUNC1(s->regmap, true);
	FUNC2(s->regmap, addr, s->buf, to_send);
	FUNC1(s->regmap, false);
}