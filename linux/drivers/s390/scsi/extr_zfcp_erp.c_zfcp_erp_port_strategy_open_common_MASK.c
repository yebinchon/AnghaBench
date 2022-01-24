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
struct zfcp_port {int /*<<< orphan*/  d_id; int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int step; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  scsi_host; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
 int /*<<< orphan*/  FC_PORTTYPE_PTP ; 
 int ZFCP_ERP_EXIT ; 
 int ZFCP_ERP_FAILED ; 
#define  ZFCP_ERP_STEP_LUN_CLOSING 133 
#define  ZFCP_ERP_STEP_LUN_OPENING 132 
#define  ZFCP_ERP_STEP_PHYS_PORT_CLOSING 131 
#define  ZFCP_ERP_STEP_PORT_CLOSING 130 
#define  ZFCP_ERP_STEP_PORT_OPENING 129 
#define  ZFCP_ERP_STEP_UNINITIALIZED 128 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_COMMON_NOESC ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct zfcp_erp_action*) ; 
 int FUNC3 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_port*) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC5(
	struct zfcp_erp_action *act)
{
	struct zfcp_adapter *adapter = act->adapter;
	struct zfcp_port *port = act->port;
	int p_status = FUNC0(&port->status);

	switch (act->step) {
	case ZFCP_ERP_STEP_UNINITIALIZED:
	case ZFCP_ERP_STEP_PHYS_PORT_CLOSING:
	case ZFCP_ERP_STEP_PORT_CLOSING:
		if (FUNC1(adapter->scsi_host) == FC_PORTTYPE_PTP)
			return FUNC2(act);
		if (!port->d_id) {
			FUNC4(port);
			return ZFCP_ERP_EXIT;
		}
		return FUNC3(act);

	case ZFCP_ERP_STEP_PORT_OPENING:
		/* D_ID might have changed during open */
		if (p_status & ZFCP_STATUS_COMMON_OPEN) {
			if (!port->d_id) {
				FUNC4(port);
				return ZFCP_ERP_EXIT;
			}
			return ZFCP_ERP_SUCCEEDED;
		}
		if (port->d_id && !(p_status & ZFCP_STATUS_COMMON_NOESC)) {
			port->d_id = 0;
			return ZFCP_ERP_FAILED;
		}
		/* no early return otherwise, continue after switch case */
		break;
	case ZFCP_ERP_STEP_LUN_CLOSING:
	case ZFCP_ERP_STEP_LUN_OPENING:
		/* NOP */
		break;
	}
	return ZFCP_ERP_FAILED;
}