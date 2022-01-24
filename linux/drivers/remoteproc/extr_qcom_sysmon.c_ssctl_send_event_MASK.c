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
struct ssctl_subsys_event_resp {int evt_driven_valid; TYPE_1__ resp; int /*<<< orphan*/  evt_driven; int /*<<< orphan*/  event; int /*<<< orphan*/  subsys_name; int /*<<< orphan*/  subsys_name_len; } ;
struct ssctl_subsys_event_req {int evt_driven_valid; TYPE_1__ resp; int /*<<< orphan*/  evt_driven; int /*<<< orphan*/  event; int /*<<< orphan*/  subsys_name; int /*<<< orphan*/  subsys_name_len; } ;
struct qmi_txn {int dummy; } ;
struct qcom_sysmon {int /*<<< orphan*/  dev; int /*<<< orphan*/  ssctl; int /*<<< orphan*/  qmi; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SSCTL_SSR_EVENT_BEFORE_SHUTDOWN ; 
 int /*<<< orphan*/  SSCTL_SSR_EVENT_FORCED ; 
 int /*<<< orphan*/  SSCTL_SUBSYS_EVENT_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssctl_subsys_event_resp*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ssctl_subsys_event_resp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmi_txn*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct qmi_txn*,int /*<<< orphan*/ ,struct ssctl_subsys_event_resp*) ; 
 int FUNC6 (struct qmi_txn*,int) ; 
 int /*<<< orphan*/  ssctl_subsys_event_req_ei ; 
 int /*<<< orphan*/  ssctl_subsys_event_resp_ei ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct qcom_sysmon *sysmon, const char *name)
{
	struct ssctl_subsys_event_resp resp;
	struct ssctl_subsys_event_req req;
	struct qmi_txn txn;
	int ret;

	FUNC2(&resp, 0, sizeof(resp));
	ret = FUNC5(&sysmon->qmi, &txn, ssctl_subsys_event_resp_ei, &resp);
	if (ret < 0) {
		FUNC1(sysmon->dev, "failed to allocate QMI txn\n");
		return;
	}

	FUNC2(&req, 0, sizeof(req));
	FUNC7(req.subsys_name, name, sizeof(req.subsys_name));
	req.subsys_name_len = FUNC8(req.subsys_name);
	req.event = SSCTL_SSR_EVENT_BEFORE_SHUTDOWN;
	req.evt_driven_valid = true;
	req.evt_driven = SSCTL_SSR_EVENT_FORCED;

	ret = FUNC3(&sysmon->qmi, &sysmon->ssctl, &txn,
			       SSCTL_SUBSYS_EVENT_REQ, 40,
			       ssctl_subsys_event_req_ei, &req);
	if (ret < 0) {
		FUNC1(sysmon->dev, "failed to send shutdown request\n");
		FUNC4(&txn);
		return;
	}

	ret = FUNC6(&txn, 5 * HZ);
	if (ret < 0)
		FUNC1(sysmon->dev, "failed receiving QMI response\n");
	else if (resp.resp.result)
		FUNC1(sysmon->dev, "ssr event send failed\n");
	else
		FUNC0(sysmon->dev, "ssr event send completed\n");
}