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
struct uart_port {int /*<<< orphan*/  mapbase; scalar_t__ membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZS_CHAN_IO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *uport)
{
	FUNC0(uport->membase);
	uport->membase = 0;
	FUNC1(uport->mapbase, ZS_CHAN_IO_SIZE);
}