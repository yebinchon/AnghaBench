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
struct uart_port {scalar_t__ irq; } ;
struct serial_struct {scalar_t__ type; scalar_t__ irq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PORT_MSM ; 
 scalar_t__ PORT_UNKNOWN ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct uart_port *port, struct serial_struct *ser)
{
	if (FUNC0(ser->type != PORT_UNKNOWN && ser->type != PORT_MSM))
		return -EINVAL;
	if (FUNC0(port->irq != ser->irq))
		return -EINVAL;
	return 0;
}