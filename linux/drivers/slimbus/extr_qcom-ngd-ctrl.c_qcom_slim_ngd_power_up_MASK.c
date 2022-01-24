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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  qmi_comp; } ;
struct qcom_slim_ngd_ctrl {int state; int ver; int /*<<< orphan*/  dev; int /*<<< orphan*/  reconf; scalar_t__ base; TYPE_1__ qmi; struct qcom_slim_ngd* ngd; } ;
struct qcom_slim_ngd {scalar_t__ base; } ;
typedef  enum qcom_slim_ngd_state { ____Placeholder_qcom_slim_ngd_state } qcom_slim_ngd_state ;

/* Variables and functions */
 int DEF_NGD_INT_MASK ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ NGD_INT_EN ; 
 int NGD_LADDR ; 
 scalar_t__ NGD_RX_MSGQ_CFG ; 
 scalar_t__ NGD_STATUS ; 
 scalar_t__ QCOM_SLIM_NGD_CTRL_ASLEEP ; 
 int QCOM_SLIM_NGD_CTRL_AWAKE ; 
 scalar_t__ QCOM_SLIM_NGD_CTRL_DOWN ; 
 int SLIM_RX_MSGQ_TIMEOUT_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_slim_ngd_ctrl*) ; 
 int FUNC3 (struct qcom_slim_ngd_ctrl*,int) ; 
 void* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct qcom_slim_ngd_ctrl *ctrl)
{
	enum qcom_slim_ngd_state cur_state = ctrl->state;
	struct qcom_slim_ngd *ngd = ctrl->ngd;
	u32 laddr, rx_msgq;
	int timeout, ret = 0;

	if (ctrl->state == QCOM_SLIM_NGD_CTRL_DOWN) {
		timeout = FUNC5(&ctrl->qmi.qmi_comp, HZ);
		if (!timeout)
			return -EREMOTEIO;
	}

	if (ctrl->state == QCOM_SLIM_NGD_CTRL_ASLEEP ||
		ctrl->state == QCOM_SLIM_NGD_CTRL_DOWN) {
		ret = FUNC3(ctrl, true);
		if (ret) {
			FUNC0(ctrl->dev, "SLIM QMI power request failed:%d\n",
					ret);
			return ret;
		}
	}

	ctrl->ver = FUNC4(ctrl->base);
	/* Version info in 16 MSbits */
	ctrl->ver >>= 16;

	laddr = FUNC4(ngd->base + NGD_STATUS);
	if (laddr & NGD_LADDR) {
		/*
		 * external MDM restart case where ADSP itself was active framer
		 * For example, modem restarted when playback was active
		 */
		if (cur_state == QCOM_SLIM_NGD_CTRL_AWAKE) {
			FUNC1(ctrl->dev, "Subsys restart: ADSP active framer\n");
			return 0;
		}
		return 0;
	}

	FUNC6(DEF_NGD_INT_MASK, ngd->base + NGD_INT_EN);
	rx_msgq = FUNC4(ngd->base + NGD_RX_MSGQ_CFG);

	FUNC6(rx_msgq|SLIM_RX_MSGQ_TIMEOUT_VAL,
				ngd->base + NGD_RX_MSGQ_CFG);
	FUNC2(ctrl);

	timeout = FUNC5(&ctrl->reconf, HZ);
	if (!timeout) {
		FUNC0(ctrl->dev, "capability exchange timed-out\n");
		return -ETIMEDOUT;
	}

	return 0;
}