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
struct imx_port {scalar_t__ dma_is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCR1 ; 
 unsigned int UCR1_ATDMAEN ; 
 unsigned int UCR1_RRDYEN ; 
 unsigned int UCR1_RXDMAEN ; 
 int /*<<< orphan*/  UCR2 ; 
 unsigned int UCR2_ATEN ; 
 unsigned int UCR2_RXEN ; 
 unsigned int FUNC0 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_port*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned int ucr1, ucr2;

	ucr1 = FUNC0(sport, UCR1);
	ucr2 = FUNC0(sport, UCR2);

	ucr2 |= UCR2_RXEN;

	if (sport->dma_is_enabled) {
		ucr1 |= UCR1_RXDMAEN | UCR1_ATDMAEN;
	} else {
		ucr1 |= UCR1_RRDYEN;
		ucr2 |= UCR2_ATEN;
	}

	/* Write UCR2 first as it includes RXEN */
	FUNC1(sport, ucr2, UCR2);
	FUNC1(sport, ucr1, UCR1);
}