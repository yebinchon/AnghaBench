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
typedef  int /*<<< orphan*/  u8 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UARTn_CTRL ; 
 int /*<<< orphan*/  UARTn_CTRL_RX_GRP ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	u8 control = FUNC0(port, UARTn_CTRL);

	control &= ~UARTn_CTRL_RX_GRP;

	FUNC1(port, control, UARTn_CTRL);
}