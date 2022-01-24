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
typedef  int /*<<< orphan*/  u32 ;
struct zfcp_scsi_dev {int /*<<< orphan*/  status; } ;
struct zfcp_port {int /*<<< orphan*/  status; } ;
struct zfcp_erp_action {int type; int /*<<< orphan*/  status; struct scsi_device* sdev; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;
typedef  enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
#define  ZFCP_ERP_ACTION_REOPEN_ADAPTER 131 
#define  ZFCP_ERP_ACTION_REOPEN_LUN 130 
#define  ZFCP_ERP_ACTION_REOPEN_PORT 129 
#define  ZFCP_ERP_ACTION_REOPEN_PORT_FORCED 128 
 int ZFCP_ERP_EXIT ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_port*,int /*<<< orphan*/ ,char*) ; 
 struct zfcp_scsi_dev* FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC5(
	struct zfcp_erp_action *act, enum zfcp_erp_act_result result)
{
	enum zfcp_erp_act_type type = act->type;
	struct zfcp_adapter *adapter = act->adapter;
	struct zfcp_port *port = act->port;
	struct scsi_device *sdev = act->sdev;
	struct zfcp_scsi_dev *zfcp_sdev;
	u32 erp_status = act->status;

	switch (type) {
	case ZFCP_ERP_ACTION_REOPEN_ADAPTER:
		if (FUNC4(&adapter->status, erp_status)) {
			FUNC0(adapter,
						 ZFCP_STATUS_COMMON_ERP_FAILED,
						 "ersscg1");
			return ZFCP_ERP_EXIT;
		}
		break;

	case ZFCP_ERP_ACTION_REOPEN_PORT_FORCED:
	case ZFCP_ERP_ACTION_REOPEN_PORT:
		if (FUNC4(&port->status, erp_status)) {
			FUNC2(port,
					      ZFCP_STATUS_COMMON_ERP_FAILED,
					      "ersscg2");
			return ZFCP_ERP_EXIT;
		}
		break;

	case ZFCP_ERP_ACTION_REOPEN_LUN:
		zfcp_sdev = FUNC3(sdev);
		if (FUNC4(&zfcp_sdev->status, erp_status)) {
			FUNC1(sdev,
					     ZFCP_STATUS_COMMON_ERP_FAILED,
					     "ersscg3", 0);
			return ZFCP_ERP_EXIT;
		}
		break;
	}
	return result;
}