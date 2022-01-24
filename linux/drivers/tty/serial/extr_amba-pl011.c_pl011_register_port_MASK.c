#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct uart_amba_port {TYPE_3__ port; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ICR ; 
 int /*<<< orphan*/  REG_IMSC ; 
 TYPE_1__ amba_reg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct uart_amba_port*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct uart_amba_port *uap)
{
	int ret;

	/* Ensure interrupts from this UART are masked and cleared */
	FUNC2(0, uap, REG_IMSC);
	FUNC2(0xffff, uap, REG_ICR);

	if (!amba_reg.state) {
		ret = FUNC4(&amba_reg);
		if (ret < 0) {
			FUNC0(uap->port.dev,
				"Failed to register AMBA-PL011 driver\n");
			return ret;
		}
	}

	ret = FUNC3(&amba_reg, &uap->port);
	if (ret)
		FUNC1(uap);

	return ret;
}