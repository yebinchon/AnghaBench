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
struct TYPE_2__ {scalar_t__ result; } ;
struct ssctl_shutdown_resp {TYPE_1__ resp; } ;
struct qmi_txn {int dummy; } ;
struct qcom_sysmon {scalar_t__ shutdown_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ind_comp; int /*<<< orphan*/  shutdown_comp; int /*<<< orphan*/  ssctl; int /*<<< orphan*/  qmi; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SSCTL_SHUTDOWN_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qmi_txn*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct ssctl_shutdown_resp*) ; 
 int FUNC5 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssctl_shutdown_resp_ei ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct qcom_sysmon *sysmon)
{
	struct ssctl_shutdown_resp resp;
	struct qmi_txn txn;
	int ret;

	FUNC6(&sysmon->ind_comp);
	FUNC6(&sysmon->shutdown_comp);
	ret = FUNC4(&sysmon->qmi, &txn, ssctl_shutdown_resp_ei, &resp);
	if (ret < 0) {
		FUNC1(sysmon->dev, "failed to allocate QMI txn\n");
		return;
	}

	ret = FUNC2(&sysmon->qmi, &sysmon->ssctl, &txn,
			       SSCTL_SHUTDOWN_REQ, 0, NULL, NULL);
	if (ret < 0) {
		FUNC1(sysmon->dev, "failed to send shutdown request\n");
		FUNC3(&txn);
		return;
	}

	ret = FUNC5(&txn, 5 * HZ);
	if (ret < 0)
		FUNC1(sysmon->dev, "failed receiving QMI response\n");
	else if (resp.resp.result)
		FUNC1(sysmon->dev, "shutdown request failed\n");
	else
		FUNC0(sysmon->dev, "shutdown request completed\n");

	if (sysmon->shutdown_irq > 0) {
		ret = FUNC8(&sysmon->shutdown_comp,
						  10 * HZ);
		if (!ret) {
			ret = FUNC7(&sysmon->ind_comp);
			if (!ret)
				FUNC1(sysmon->dev,
					"timeout waiting for shutdown ack\n");
		}
	}
}