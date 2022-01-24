#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {TYPE_1__* pdev; } ;
struct fw_blob {int /*<<< orphan*/ * fw; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FW_ISP2031 ; 
 size_t FW_ISP21XX ; 
 size_t FW_ISP22XX ; 
 size_t FW_ISP2300 ; 
 size_t FW_ISP2322 ; 
 size_t FW_ISP24XX ; 
 size_t FW_ISP25XX ; 
 size_t FW_ISP27XX ; 
 size_t FW_ISP28XX ; 
 size_t FW_ISP8031 ; 
 size_t FW_ISP81XX ; 
 size_t FW_ISP82XX ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
 scalar_t__ FUNC8 (struct qla_hw_data*) ; 
 scalar_t__ FUNC9 (struct qla_hw_data*) ; 
 scalar_t__ FUNC10 (struct qla_hw_data*) ; 
 scalar_t__ FUNC11 (struct qla_hw_data*) ; 
 scalar_t__ FUNC12 (struct qla_hw_data*) ; 
 scalar_t__ FUNC13 (struct qla_hw_data*) ; 
 scalar_t__ FUNC14 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 struct fw_blob* qla_fw_blobs ; 
 int /*<<< orphan*/  qla_fw_lock ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct fw_blob *
FUNC19(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	struct fw_blob *blob;

	if (FUNC1(ha)) {
		blob = &qla_fw_blobs[FW_ISP21XX];
	} else if (FUNC2(ha)) {
		blob = &qla_fw_blobs[FW_ISP22XX];
	} else if (FUNC3(ha) || FUNC4(ha) || FUNC10(ha)) {
		blob = &qla_fw_blobs[FW_ISP2300];
	} else if (FUNC5(ha) || FUNC11(ha)) {
		blob = &qla_fw_blobs[FW_ISP2322];
	} else if (FUNC6(ha)) {
		blob = &qla_fw_blobs[FW_ISP24XX];
	} else if (FUNC7(ha)) {
		blob = &qla_fw_blobs[FW_ISP25XX];
	} else if (FUNC13(ha)) {
		blob = &qla_fw_blobs[FW_ISP81XX];
	} else if (FUNC14(ha)) {
		blob = &qla_fw_blobs[FW_ISP82XX];
	} else if (FUNC0(ha)) {
		blob = &qla_fw_blobs[FW_ISP2031];
	} else if (FUNC12(ha)) {
		blob = &qla_fw_blobs[FW_ISP8031];
	} else if (FUNC8(ha)) {
		blob = &qla_fw_blobs[FW_ISP27XX];
	} else if (FUNC9(ha)) {
		blob = &qla_fw_blobs[FW_ISP28XX];
	} else {
		return NULL;
	}

	if (!blob->name)
		return NULL;

	FUNC15(&qla_fw_lock);
	if (blob->fw)
		goto out;

	if (FUNC18(&blob->fw, blob->name, &ha->pdev->dev)) {
		FUNC17(ql_log_warn, vha, 0x0063,
		    "Failed to load firmware image (%s).\n", blob->name);
		blob->fw = NULL;
		blob = NULL;
	}

out:
	FUNC16(&qla_fw_lock);
	return blob;
}