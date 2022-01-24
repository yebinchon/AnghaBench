#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct qla_hw_data {TYPE_1__* pdev; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_9__ {scalar_t__ subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int BIT_0 ; 
 int BIT_13 ; 
 int BIT_14 ; 
 int BIT_15 ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ PCI_VENDOR_ID_HP ; 
 scalar_t__ PCI_VENDOR_ID_QLOGIC ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_mbx ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

int
FUNC11(scsi_qla_host_t *vha, uint16_t *temp)
{
	int rval = QLA_FUNCTION_FAILED;
	struct qla_hw_data *ha = vha->hw;
	uint8_t byte;

	if (!FUNC0(ha) || FUNC1(ha) || FUNC4(ha)) {
		FUNC6(ql_dbg_mbx, vha, 0x1150,
		    "Thermal not supported by this card.\n");
		return rval;
	}

	if (FUNC2(ha)) {
		if (ha->pdev->subsystem_vendor == PCI_VENDOR_ID_QLOGIC &&
		    ha->pdev->subsystem_device == 0x0175) {
			rval = FUNC8(vha, 0, &byte,
			    0x98, 0x1, 1, BIT_13|BIT_0);
			*temp = byte;
			return rval;
		}
		if (ha->pdev->subsystem_vendor == PCI_VENDOR_ID_HP &&
		    ha->pdev->subsystem_device == 0x338e) {
			rval = FUNC8(vha, 0, &byte,
			    0x98, 0x1, 1, BIT_15|BIT_14|BIT_0);
			*temp = byte;
			return rval;
		}
		FUNC6(ql_dbg_mbx, vha, 0x10c9,
		    "Thermal not supported by this card.\n");
		return rval;
	}

	if (FUNC5(ha)) {
		*temp = FUNC10(vha);
		rval = QLA_SUCCESS;
		return rval;
	} else if (FUNC3(ha)) {
		*temp = FUNC9(vha);
		rval = QLA_SUCCESS;
		return rval;
	}

	rval = FUNC7(vha, temp);
	return rval;
}