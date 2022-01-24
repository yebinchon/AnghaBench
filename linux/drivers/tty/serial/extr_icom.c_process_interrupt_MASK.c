#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct icom_port {TYPE_1__ uart_port; } ;

/* Variables and functions */
 int INT_RCV_COMPLETED ; 
 int INT_XMIT_COMPLETED ; 
 int INT_XMIT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int,struct icom_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct icom_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct icom_port*) ; 

__attribute__((used)) static void FUNC5(u16 port_int_reg,
			      struct icom_port *icom_port)
{

	FUNC1(&icom_port->uart_port.lock);
	FUNC3(icom_port, "INTERRUPT", port_int_reg);

	if (port_int_reg & (INT_XMIT_COMPLETED | INT_XMIT_DISABLED))
		FUNC4(port_int_reg, icom_port);

	if (port_int_reg & INT_RCV_COMPLETED)
		FUNC0(port_int_reg, icom_port);

	FUNC2(&icom_port->uart_port.lock);
}