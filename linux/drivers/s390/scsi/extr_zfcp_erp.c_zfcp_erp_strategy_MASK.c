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
struct zfcp_adapter {int /*<<< orphan*/  ref; int /*<<< orphan*/  erp_lock; int /*<<< orphan*/  erp_low_mem_count; int /*<<< orphan*/  erp_total_count; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
#define  ZFCP_ERP_CONTINUES 133 
#define  ZFCP_ERP_DISMISSED 132 
#define  ZFCP_ERP_EXIT 131 
#define  ZFCP_ERP_FAILED 130 
#define  ZFCP_ERP_NOMEM 129 
#define  ZFCP_ERP_SUCCEEDED 128 
 int ZFCP_STATUS_ERP_DISMISSED ; 
 int ZFCP_STATUS_ERP_LOWMEM ; 
 int ZFCP_STATUS_ERP_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  zfcp_adapter_release ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_erp_action*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_erp_action*) ; 
 int FUNC9 (struct zfcp_erp_action*,int) ; 
 int FUNC10 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_erp_action*) ; 
 int FUNC14 (struct zfcp_erp_action*,int) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC15(
	struct zfcp_erp_action *erp_action)
{
	enum zfcp_erp_act_result result;
	unsigned long flags;
	struct zfcp_adapter *adapter = erp_action->adapter;

	FUNC1(&adapter->ref);

	FUNC3(&adapter->erp_lock, flags);
	FUNC8(erp_action);

	if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED) {
		FUNC6(erp_action);
		result = ZFCP_ERP_DISMISSED;
		goto unlock;
	}

	if (erp_action->status & ZFCP_STATUS_ERP_TIMEDOUT) {
		result = ZFCP_ERP_FAILED;
		goto check_target;
	}

	FUNC7(erp_action);

	/* no lock to allow for blocking operations */
	FUNC4(&adapter->erp_lock, flags);
	result = FUNC10(erp_action);
	FUNC3(&adapter->erp_lock, flags);

	if (erp_action->status & ZFCP_STATUS_ERP_DISMISSED)
		result = ZFCP_ERP_CONTINUES;

	switch (result) {
	case ZFCP_ERP_NOMEM:
		if (!(erp_action->status & ZFCP_STATUS_ERP_LOWMEM)) {
			++adapter->erp_low_mem_count;
			erp_action->status |= ZFCP_STATUS_ERP_LOWMEM;
		}
		if (adapter->erp_total_count == adapter->erp_low_mem_count)
			FUNC0(adapter, 0, "erstgy1");
		else {
			FUNC13(erp_action);
			result = ZFCP_ERP_CONTINUES;
		}
		goto unlock;

	case ZFCP_ERP_CONTINUES:
		if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
			--adapter->erp_low_mem_count;
			erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
		}
		goto unlock;
	case ZFCP_ERP_SUCCEEDED:
	case ZFCP_ERP_FAILED:
	case ZFCP_ERP_EXIT:
	case ZFCP_ERP_DISMISSED:
		/* NOP */
		break;
	}

check_target:
	result = FUNC9(erp_action, result);
	FUNC6(erp_action);
	result = FUNC14(erp_action, result);
	if (result == ZFCP_ERP_EXIT)
		goto unlock;
	if (result == ZFCP_ERP_SUCCEEDED)
		FUNC12(erp_action);
	if (result == ZFCP_ERP_FAILED)
		FUNC11(erp_action);

 unlock:
	FUNC4(&adapter->erp_lock, flags);

	if (result != ZFCP_ERP_CONTINUES)
		FUNC5(erp_action, result);

	FUNC2(&adapter->ref, zfcp_adapter_release);
	return result;
}