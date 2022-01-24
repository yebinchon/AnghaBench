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
struct zfcp_erp_action {int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  status; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  erp_lock; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
 scalar_t__ FC_PORTTYPE_PTP ; 
 int ZFCP_ERP_FAILED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_ADAPTER_HOST_CON_INIT ; 
 int ZFCP_STATUS_ADAPTER_XCONFIG_OK ; 
 int ZFCP_STATUS_ERP_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC10 (struct zfcp_erp_action*) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC11(
	struct zfcp_erp_action *erp_action)
{
	int retries;
	int sleep = 1;
	struct zfcp_adapter *adapter = erp_action->adapter;

	FUNC0(ZFCP_STATUS_ADAPTER_XCONFIG_OK, &adapter->status);

	for (retries = 7; retries; retries--) {
		FUNC0(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
				  &adapter->status);
		FUNC6(&adapter->erp_lock);
		FUNC8(erp_action);
		FUNC7(&adapter->erp_lock);
		if (FUNC10(erp_action)) {
			FUNC0(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
					  &adapter->status);
			return ZFCP_ERP_FAILED;
		}

		FUNC5(adapter->erp_ready_wq,
			   !FUNC3(&adapter->erp_ready_head));
		if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT)
			break;

		if (!(FUNC1(&adapter->status) &
		      ZFCP_STATUS_ADAPTER_HOST_CON_INIT))
			break;

		FUNC4(sleep);
		sleep *= 2;
	}

	FUNC0(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
			  &adapter->status);

	if (!(FUNC1(&adapter->status) & ZFCP_STATUS_ADAPTER_XCONFIG_OK))
		return ZFCP_ERP_FAILED;

	if (FUNC2(adapter->scsi_host) == FC_PORTTYPE_PTP)
		FUNC9(adapter);

	return ZFCP_ERP_SUCCEEDED;
}