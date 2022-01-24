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
struct msm_port {int /*<<< orphan*/  pclk; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, unsigned int state,
		      unsigned int oldstate)
{
	struct msm_port *msm_port = FUNC0(port);

	switch (state) {
	case 0:
		FUNC2(msm_port->clk);
		FUNC2(msm_port->pclk);
		break;
	case 3:
		FUNC1(msm_port->clk);
		FUNC1(msm_port->pclk);
		break;
	default:
		FUNC3("msm_serial: Unknown PM state %d\n", state);
	}
}