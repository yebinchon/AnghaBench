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
struct oxu_hcd {TYPE_1__* regs; int /*<<< orphan*/  hcs_params; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port_status; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_RWC_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct oxu_hcd *oxu)
{
	int port = FUNC0(oxu->hcs_params);

	while (port--)
		FUNC1(PORT_RWC_BITS, &oxu->regs->port_status[port]);
}