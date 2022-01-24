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
struct qcom_slim_ngd_qmi {int /*<<< orphan*/  svc_event_hdl; } ;
struct qcom_slim_ngd_ctrl {int /*<<< orphan*/  dev; struct qcom_slim_ngd_qmi qmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIMBUS_QMI_INS_ID ; 
 int /*<<< orphan*/  SLIMBUS_QMI_SVC_ID ; 
 int /*<<< orphan*/  SLIMBUS_QMI_SVC_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  qcom_slim_ngd_qmi_svc_event_ops ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qcom_slim_ngd_ctrl *ctrl)
{
	struct qcom_slim_ngd_qmi *qmi = &ctrl->qmi;
	int ret;

	ret = FUNC2(&qmi->svc_event_hdl, 0,
				&qcom_slim_ngd_qmi_svc_event_ops, NULL);
	if (ret < 0) {
		FUNC0(ctrl->dev, "qmi_handle_init failed: %d\n", ret);
		return ret;
	}

	ret = FUNC1(&qmi->svc_event_hdl, SLIMBUS_QMI_SVC_ID,
			SLIMBUS_QMI_SVC_V1, SLIMBUS_QMI_INS_ID);
	if (ret < 0) {
		FUNC0(ctrl->dev, "qmi_add_lookup failed: %d\n", ret);
		FUNC3(&qmi->svc_event_hdl);
	}
	return ret;
}