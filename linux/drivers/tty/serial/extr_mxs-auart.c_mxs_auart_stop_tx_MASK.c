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
struct mxs_auart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUART_CTRL2_TXE ; 
 int /*<<< orphan*/  REG_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct mxs_auart_port* FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *u)
{
	struct mxs_auart_port *s = FUNC1(u);

	FUNC0(AUART_CTRL2_TXE, s, REG_CTRL2);
}