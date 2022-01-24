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
struct zfcp_adapter {int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  erp_lock; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ZFCP_ERP_FAILED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int ZFCP_STATUS_ERP_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct zfcp_erp_action*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_erp_action*) ; 
 int FUNC6 (struct zfcp_erp_action*) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC7(
	struct zfcp_erp_action *act)
{
	int ret;
	struct zfcp_adapter *adapter = act->adapter;

	FUNC2(&adapter->erp_lock);
	FUNC5(act);
	FUNC3(&adapter->erp_lock);

	ret = FUNC6(act);
	if (ret == -EOPNOTSUPP)
		return ZFCP_ERP_SUCCEEDED;
	if (ret)
		return ZFCP_ERP_FAILED;

	FUNC4("erasox1", act);
	FUNC1(adapter->erp_ready_wq,
		   !FUNC0(&adapter->erp_ready_head));
	FUNC4("erasox2", act);
	if (act->status & ZFCP_STATUS_ERP_TIMEDOUT)
		return ZFCP_ERP_FAILED;

	return ZFCP_ERP_SUCCEEDED;
}