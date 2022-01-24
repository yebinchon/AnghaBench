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
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  erp_total_count; int /*<<< orphan*/  status; int /*<<< orphan*/  erp_thread; } ;
struct scsi_device {int dummy; } ;
typedef  enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;

/* Variables and functions */
 int ZFCP_ERP_ACTION_FAILED ; 
 int ZFCP_ERP_ACTION_NONE ; 
 int /*<<< orphan*/  ZFCP_STATUS_ADAPTER_ERP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*,int,int) ; 
 int FUNC4 (int,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ; 
 int FUNC5 (int,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ; 
 struct zfcp_erp_action* FUNC6 (int,int /*<<< orphan*/ ,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ; 

__attribute__((used)) static void FUNC7(enum zfcp_erp_act_type want,
				    struct zfcp_adapter *adapter,
				    struct zfcp_port *port,
				    struct scsi_device *sdev,
				    char *dbftag, u32 act_status)
{
	enum zfcp_erp_act_type need;
	struct zfcp_erp_action *act;

	need = FUNC4(want, adapter, port, sdev);
	if (!need) {
		need = ZFCP_ERP_ACTION_FAILED; /* marker for trace */
		goto out;
	}

	if (!adapter->erp_thread) {
		need = ZFCP_ERP_ACTION_NONE; /* marker for trace */
		goto out;
	}

	need = FUNC5(want, adapter, port, sdev);
	if (!need)
		goto out;

	act = FUNC6(need, act_status, adapter, port, sdev);
	if (!act) {
		need |= ZFCP_ERP_ACTION_NONE; /* marker for trace */
		goto out;
	}
	FUNC0(ZFCP_STATUS_ADAPTER_ERP_PENDING, &adapter->status);
	++adapter->erp_total_count;
	FUNC1(&act->list, &adapter->erp_ready_head);
	FUNC2(&adapter->erp_ready_wq);
 out:
	FUNC3(dbftag, adapter, port, sdev, want, need);
}