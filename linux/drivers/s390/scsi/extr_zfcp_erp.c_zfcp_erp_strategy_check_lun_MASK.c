#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_scsi_dev {int /*<<< orphan*/  status; TYPE_3__* port; int /*<<< orphan*/  erp_counter; } ;
struct scsi_device {int dummy; } ;
typedef  enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_6__ {scalar_t__ wwpn; TYPE_2__* adapter; } ;
struct TYPE_5__ {TYPE_1__* ccw_device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long long,unsigned long long) ; 
 struct zfcp_scsi_dev* FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*,int) ; 
 scalar_t__ FUNC8 (struct scsi_device*) ; 

__attribute__((used)) static enum zfcp_erp_act_result FUNC9(
	struct scsi_device *sdev, enum zfcp_erp_act_result result)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC4(sdev);

	switch (result) {
	case ZFCP_ERP_SUCCEEDED :
		FUNC2(&zfcp_sdev->erp_counter, 0);
		FUNC6(sdev);
		break;
	case ZFCP_ERP_FAILED :
		FUNC0(&zfcp_sdev->erp_counter);
		if (FUNC1(&zfcp_sdev->erp_counter) > ZFCP_MAX_ERPS) {
			FUNC3(&zfcp_sdev->port->adapter->ccw_device->dev,
				"ERP failed for LUN 0x%016Lx on "
				"port 0x%016Lx\n",
				(unsigned long long)FUNC8(sdev),
				(unsigned long long)zfcp_sdev->port->wwpn);
			FUNC7(sdev,
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

	if (FUNC1(&zfcp_sdev->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
		FUNC5(sdev, 0);
		result = ZFCP_ERP_EXIT;
	}
	return result;
}