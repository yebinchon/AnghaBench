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
struct sockaddr {int dummy; } ;
struct slimbus_select_inst_req_msg_v01 {int instance; int mode_valid; int /*<<< orphan*/  mode; } ;
struct qmi_handle {int /*<<< orphan*/  sock; } ;
struct TYPE_4__ {struct qmi_handle* handle; int /*<<< orphan*/  svc_info; } ;
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  dev; TYPE_2__ qmi; TYPE_1__* ngd; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SLIMBUS_MODE_MASTER_V01 ; 
 int /*<<< orphan*/  SLIMBUS_MODE_SATELLITE_V01 ; 
 int /*<<< orphan*/  SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct qmi_handle*) ; 
 struct qmi_handle* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_slim_qmi_msg_handlers ; 
 int FUNC4 (struct qcom_slim_ngd_ctrl*,struct slimbus_select_inst_req_msg_v01*) ; 
 int FUNC5 (struct qmi_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qmi_handle*) ; 

__attribute__((used)) static int FUNC7(struct qcom_slim_ngd_ctrl *ctrl,
			      bool apps_is_master)
{
	struct slimbus_select_inst_req_msg_v01 req;
	struct qmi_handle *handle;
	int rc;

	handle = FUNC2(ctrl->dev, sizeof(*handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	rc = FUNC5(handle, SLIMBUS_QMI_POWER_REQ_MAX_MSG_LEN,
				NULL, qcom_slim_qmi_msg_handlers);
	if (rc < 0) {
		FUNC0(ctrl->dev, "QMI client init failed: %d\n", rc);
		goto qmi_handle_init_failed;
	}

	rc = FUNC3(handle->sock,
				(struct sockaddr *)&ctrl->qmi.svc_info,
				sizeof(ctrl->qmi.svc_info), 0);
	if (rc < 0) {
		FUNC0(ctrl->dev, "Remote Service connect failed: %d\n", rc);
		goto qmi_connect_to_service_failed;
	}

	/* Instance is 0 based */
	req.instance = (ctrl->ngd->id >> 1);
	req.mode_valid = 1;

	/* Mode indicates the role of the ADSP */
	if (apps_is_master)
		req.mode = SLIMBUS_MODE_SATELLITE_V01;
	else
		req.mode = SLIMBUS_MODE_MASTER_V01;

	ctrl->qmi.handle = handle;

	rc = FUNC4(ctrl, &req);
	if (rc) {
		FUNC0(ctrl->dev, "failed to select h/w instance\n");
		goto qmi_select_instance_failed;
	}

	return 0;

qmi_select_instance_failed:
	ctrl->qmi.handle = NULL;
qmi_connect_to_service_failed:
	FUNC6(handle);
qmi_handle_init_failed:
	FUNC1(ctrl->dev, handle);
	return rc;
}