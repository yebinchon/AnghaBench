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
typedef  size_t u8 ;
typedef  int u32 ;
struct pm8001_port {size_t port_state; int /*<<< orphan*/  port_attached; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct pm8001_phy {int /*<<< orphan*/  dev_sas_addr; scalar_t__ phy_attached; TYPE_1__ identify; scalar_t__ phy_type; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; struct pm8001_port* port; } ;
struct hw_event_resp {int /*<<< orphan*/  npip_portstate; int /*<<< orphan*/  lr_evt_status_phyid_portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_EVENT_PHY_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
#define  PORT_INVALID 132 
#define  PORT_IN_RESET 131 
#define  PORT_LOSTCOMM 130 
#define  PORT_NOT_ESTABLISHED 129 
#define  PORT_VALID 128 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm8001_hba_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
	struct hw_event_resp *pPayload =
		(struct hw_event_resp *)(piomb + 4);
	u32 lr_evt_status_phyid_portid =
		FUNC1(pPayload->lr_evt_status_phyid_portid);
	u8 port_id = (u8)(lr_evt_status_phyid_portid & 0x0000000F);
	u8 phy_id =
		(u8)((lr_evt_status_phyid_portid & 0x000000F0) >> 4);
	u32 npip_portstate = FUNC1(pPayload->npip_portstate);
	u8 portstate = (u8)(npip_portstate & 0x0000000F);
	struct pm8001_port *port = &pm8001_ha->port[port_id];
	struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
	port->port_state =  portstate;
	phy->phy_type = 0;
	phy->identify.device_type = 0;
	phy->phy_attached = 0;
	FUNC2(&phy->dev_sas_addr, 0, SAS_ADDR_SIZE);
	switch (portstate) {
	case PORT_VALID:
		break;
	case PORT_INVALID:
		FUNC0(pm8001_ha,
			FUNC4(" PortInvalid portID %d\n", port_id));
		FUNC0(pm8001_ha,
			FUNC4(" Last phy Down and port invalid\n"));
		port->port_attached = 0;
		FUNC3(pm8001_ha, 0, HW_EVENT_PHY_DOWN,
			port_id, phy_id, 0, 0);
		break;
	case PORT_IN_RESET:
		FUNC0(pm8001_ha,
			FUNC4(" Port In Reset portID %d\n", port_id));
		break;
	case PORT_NOT_ESTABLISHED:
		FUNC0(pm8001_ha,
			FUNC4(" phy Down and PORT_NOT_ESTABLISHED\n"));
		port->port_attached = 0;
		break;
	case PORT_LOSTCOMM:
		FUNC0(pm8001_ha,
			FUNC4(" phy Down and PORT_LOSTCOMM\n"));
		FUNC0(pm8001_ha,
			FUNC4(" Last phy Down and port invalid\n"));
		port->port_attached = 0;
		FUNC3(pm8001_ha, 0, HW_EVENT_PHY_DOWN,
			port_id, phy_id, 0, 0);
		break;
	default:
		port->port_attached = 0;
		FUNC0(pm8001_ha,
			FUNC4(" phy Down and(default) = %x\n",
			portstate));
		break;

	}
}