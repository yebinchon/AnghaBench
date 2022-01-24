#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int portnum; } ;
struct TYPE_4__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA82XX_CRB_DRV_ACTIVE ; 
 int /*<<< orphan*/  QLA82XX_CRB_DRV_IDC_VERSION ; 
 int QLA82XX_DRV_ACTIVE ; 
 int QLA82XX_IDC_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC1 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(scsi_qla_host_t *vha)
{
	int idc_ver;
	uint32_t drv_active;
	struct qla_hw_data *ha = vha->hw;

	drv_active = FUNC1(ha, QLA82XX_CRB_DRV_ACTIVE);
	if (drv_active == (QLA82XX_DRV_ACTIVE << (ha->portnum * 4))) {
		FUNC2(ha, QLA82XX_CRB_DRV_IDC_VERSION,
		    QLA82XX_IDC_VERSION);
		FUNC0(ql_log_info, vha, 0xb082,
		    "IDC version updated to %d\n", QLA82XX_IDC_VERSION);
	} else {
		idc_ver = FUNC1(ha, QLA82XX_CRB_DRV_IDC_VERSION);
		if (idc_ver != QLA82XX_IDC_VERSION)
			FUNC0(ql_log_info, vha, 0xb083,
			    "qla2xxx driver IDC version %d is not compatible "
			    "with IDC version %d of the other drivers\n",
			    QLA82XX_IDC_VERSION, idc_ver);
	}
}