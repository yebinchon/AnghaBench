#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zfcp_port {int /*<<< orphan*/  status; scalar_t__ wwpn; TYPE_2__* adapter; int /*<<< orphan*/  erp_counter; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_4__ {TYPE_1__* ccw_device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ZFCP_ERP_CONTINUES 133 
#define  ZFCP_ERP_DISMISSED 132 
#define  ZFCP_ERP_EXIT 131 
#define  ZFCP_ERP_FAILED 130 
#define  ZFCP_ERP_NOMEM 129 
#define  ZFCP_ERP_SUCCEEDED 128 
 int ZFCP_MAX_ERPS ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_NOESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*,int) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC7(
	struct zfcp_port *port, enum zfcp_erp_act_result result)
{
	switch (result) {
	case ZFCP_ERP_SUCCEEDED :
		FUNC2(&port->erp_counter, 0);
		FUNC5(port);
		break;

	case ZFCP_ERP_FAILED :
		if (FUNC1(&port->status) & ZFCP_STATUS_COMMON_NOESC) {
			FUNC4(port, 0);
			result = ZFCP_ERP_EXIT;
		}
		FUNC0(&port->erp_counter);
		if (FUNC1(&port->erp_counter) > ZFCP_MAX_ERPS) {
			FUNC3(&port->adapter->ccw_device->dev,
				"ERP failed for remote port 0x%016Lx\n",
				(unsigned long long)port->wwpn);
			FUNC6(port,
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

	if (FUNC1(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
		FUNC4(port, 0);
		result = ZFCP_ERP_EXIT;
	}
	return result;
}