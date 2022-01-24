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
struct men_z135_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEN_Z135_CONF_REG ; 
 int /*<<< orphan*/  MEN_Z135_IER_RXCIEN ; 
 int /*<<< orphan*/  FUNC0 (struct men_z135_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct men_z135_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct men_z135_port *uart = FUNC1(port);

	FUNC0(uart, MEN_Z135_CONF_REG, MEN_Z135_IER_RXCIEN);
}