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
struct TYPE_2__ {scalar_t__ current_state_id; } ;
struct isci_host {TYPE_1__ sm; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_READY ; 
 scalar_t__ SCIC_STARTING ; 
 int /*<<< orphan*/  FUNC0 (struct isci_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC2(struct isci_host *ihost, enum sci_status status)
{
	if (ihost->sm.current_state_id == SCIC_STARTING) {
		/*
		 * We move into the ready state, because some of the phys/ports
		 * may be up and operational.
		 */
		FUNC1(&ihost->sm, SCIC_READY);

		FUNC0(ihost, status);
	}
}