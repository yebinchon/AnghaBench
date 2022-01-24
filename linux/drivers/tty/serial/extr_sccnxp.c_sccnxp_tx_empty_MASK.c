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
struct sccnxp_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCCNXP_SR_REG ; 
 int SR_TXEMT ; 
 unsigned int TIOCSER_TEMT ; 
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_port *port)
{
	u8 val;
	unsigned long flags;
	struct sccnxp_port *s = FUNC0(port->dev);

	FUNC2(&s->lock, flags);
	val = FUNC1(port, SCCNXP_SR_REG);
	FUNC3(&s->lock, flags);

	return (val & SR_TXEMT) ? TIOCSER_TEMT : 0;
}