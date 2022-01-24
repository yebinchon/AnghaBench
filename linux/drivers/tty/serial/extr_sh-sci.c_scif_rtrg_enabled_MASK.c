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
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSRTRGR ; 
 int /*<<< orphan*/  SCFCR ; 
 int SCFCR_RTRG0 ; 
 int SCFCR_RTRG1 ; 
 TYPE_1__* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct uart_port *port)
{
	if (FUNC0(port, HSRTRGR)->size)
		return FUNC1(port, HSRTRGR) != 0;
	else
		return (FUNC1(port, SCFCR) &
			(SCFCR_RTRG0 | SCFCR_RTRG1)) != 0;
}