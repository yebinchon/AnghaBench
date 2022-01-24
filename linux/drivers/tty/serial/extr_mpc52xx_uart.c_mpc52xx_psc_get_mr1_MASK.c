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
typedef  int /*<<< orphan*/  u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPC52xx_PSC_SEL_MODE_REG_1 ; 
 TYPE_1__* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct uart_port *port)
{
	FUNC2(&FUNC0(port)->command, MPC52xx_PSC_SEL_MODE_REG_1);
	return FUNC1(&FUNC0(port)->mode);
}