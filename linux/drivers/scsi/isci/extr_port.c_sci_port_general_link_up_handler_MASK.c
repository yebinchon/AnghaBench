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
typedef  int /*<<< orphan*/  u8 ;
struct sci_sas_address {scalar_t__ high; scalar_t__ low; } ;
struct sci_base_state_machine {scalar_t__ current_state_id; } ;
struct isci_port {scalar_t__ active_phy_mask; struct sci_base_state_machine sm; } ;
struct isci_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_PORT_READY ; 
 scalar_t__ SCI_PORT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct isci_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_phy*,struct sci_sas_address*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_port*,struct isci_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_port*,struct sci_sas_address*) ; 
 int /*<<< orphan*/  FUNC4 (struct isci_port*,struct isci_phy*) ; 

__attribute__((used)) static void FUNC5(struct isci_port *iport,
					     struct isci_phy *iphy,
					     u8 flags)
{
	struct sci_sas_address port_sas_address;
	struct sci_sas_address phy_sas_address;

	FUNC3(iport, &port_sas_address);
	FUNC1(iphy, &phy_sas_address);

	/* If the SAS address of the new phy matches the SAS address of
	 * other phys in the port OR this is the first phy in the port,
	 * then activate the phy and allow it to be used for operations
	 * in this port.
	 */
	if ((phy_sas_address.high == port_sas_address.high &&
	     phy_sas_address.low  == port_sas_address.low) ||
	    iport->active_phy_mask == 0) {
		struct sci_base_state_machine *sm = &iport->sm;

		FUNC2(iport, iphy, flags);
		if (sm->current_state_id == SCI_PORT_RESETTING)
			FUNC0(iport, SCI_PORT_READY);
	} else
		FUNC4(iport, iphy);
}