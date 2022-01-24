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
typedef  int u8 ;
struct isci_port {int active_phy_mask; struct isci_host* owning_controller; } ;
struct isci_phy {scalar_t__ protocol; int phy_index; } ;
struct isci_host {int dummy; } ;

/* Variables and functions */
 int PF_NOTIFY ; 
 int PF_RESUME ; 
 scalar_t__ SAS_PROTOCOL_SATA ; 
 int /*<<< orphan*/  FUNC0 (struct isci_host*,struct isci_port*,struct isci_phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct isci_host*,struct isci_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_phy*) ; 

__attribute__((used)) static void FUNC3(struct isci_port *iport,
				  struct isci_phy *iphy,
				  u8 flags)
{
	struct isci_host *ihost = iport->owning_controller;

	if (iphy->protocol != SAS_PROTOCOL_SATA && (flags & PF_RESUME))
		FUNC2(iphy);

	iport->active_phy_mask |= 1 << iphy->phy_index;

	FUNC1(ihost, iphy);

	if (flags & PF_NOTIFY)
		FUNC0(ihost, iport, iphy);
}