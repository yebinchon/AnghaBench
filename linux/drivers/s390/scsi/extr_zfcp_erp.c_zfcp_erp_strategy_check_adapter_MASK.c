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
struct zfcp_adapter {int /*<<< orphan*/  status; TYPE_1__* ccw_device; int /*<<< orphan*/  erp_counter; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ZFCP_ERP_CONTINUES 133 
#define  ZFCP_ERP_DISMISSED 132 
#define  ZFCP_ERP_EXIT 131 
#define  ZFCP_ERP_FAILED 130 
#define  ZFCP_ERP_NOMEM 129 
#define  ZFCP_ERP_SUCCEEDED 128 
 int ZFCP_MAX_ERPS ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*,int) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC7(
	struct zfcp_adapter *adapter, enum zfcp_erp_act_result result)
{
	switch (result) {
	case ZFCP_ERP_SUCCEEDED :
		FUNC2(&adapter->erp_counter, 0);
		FUNC5(adapter);
		break;

	case ZFCP_ERP_FAILED :
		FUNC0(&adapter->erp_counter);
		if (FUNC1(&adapter->erp_counter) > ZFCP_MAX_ERPS) {
			FUNC3(&adapter->ccw_device->dev,
				"ERP cannot recover an error "
				"on the FCP device\n");
			FUNC6(adapter,
					    ZFCP_STATUS_COMMON_ERP_FAILED);
		}
		break;
	case ZFCP_ERP_CONTINUES:
	case ZFCP_ERP_EXIT:
	case ZFCP_ERP_DISMISSED:
	case ZFCP_ERP_NOMEM:
		/* NOP */
		break;
	}

	if (FUNC1(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
		FUNC4(adapter, 0);
		result = ZFCP_ERP_EXIT;
	}
	return result;
}