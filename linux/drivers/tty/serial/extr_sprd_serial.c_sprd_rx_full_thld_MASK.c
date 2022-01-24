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
typedef  int u32 ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_CTL2 ; 
 int THLD_RX_FULL_MASK ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, u32 thld)
{
	u32 val = FUNC0(port, SPRD_CTL2);

	val &= ~THLD_RX_FULL_MASK;
	val |= thld & THLD_RX_FULL_MASK;
	FUNC1(port, SPRD_CTL2, val);
}