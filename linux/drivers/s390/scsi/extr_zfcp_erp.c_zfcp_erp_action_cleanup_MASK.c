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
struct zfcp_port {int /*<<< orphan*/  dev; } ;
struct zfcp_erp_action {int type; int status; int /*<<< orphan*/  step; struct scsi_device* sdev; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  ref; int /*<<< orphan*/  service_level; int /*<<< orphan*/  ns_up_work; int /*<<< orphan*/  work_queue; } ;
struct scsi_device {int dummy; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_LUN 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 129 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 128 
 int /*<<< orphan*/  ZFCP_ERP_STEP_UNINITIALIZED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_ERP_NO_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_adapter_release ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC8(struct zfcp_erp_action *act,
				    enum zfcp_erp_act_result result)
{
	struct zfcp_adapter *adapter = act->adapter;
	struct zfcp_port *port = act->port;
	struct scsi_device *sdev = act->sdev;

	switch (act->type) {
	case ZFCP_ERP_ACTION_REOPEN_LUN:
		if (!(act->status & ZFCP_STATUS_ERP_NO_REF))
			FUNC4(sdev);
		FUNC6(port);
		break;

	case ZFCP_ERP_ACTION_REOPEN_PORT:
		/* This switch case might also happen after a forced reopen
		 * was successfully done and thus overwritten with a new
		 * non-forced reopen at `ersfs_2'. In this case, we must not
		 * do the clean-up of the non-forced version.
		 */
		if (act->step != ZFCP_ERP_STEP_UNINITIALIZED)
			if (result == ZFCP_ERP_SUCCEEDED)
				FUNC6(port);
		/* fall through */
	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
		FUNC1(&port->dev);
		break;

	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		if (result == ZFCP_ERP_SUCCEEDED) {
			FUNC3(&adapter->service_level);
			FUNC7(adapter);
			FUNC2(adapter->work_queue, &adapter->ns_up_work);
		} else
			FUNC5(&adapter->service_level);

		FUNC0(&adapter->ref, zfcp_adapter_release);
		break;
	}
}