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
struct qcom_sysmon {int ssr_ack; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  comp; int /*<<< orphan*/  ept; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct qcom_sysmon *sysmon)
{
	char *req = "ssr:shutdown";
	int ret;

	FUNC2(&sysmon->lock);
	FUNC4(&sysmon->comp);
	sysmon->ssr_ack = false;

	ret = FUNC5(sysmon->ept, req, FUNC6(req) + 1);
	if (ret < 0) {
		FUNC0(sysmon->dev, "send sysmon shutdown request failed\n");
		goto out_unlock;
	}

	ret = FUNC7(&sysmon->comp,
					  FUNC1(5000));
	if (!ret) {
		FUNC0(sysmon->dev, "timeout waiting for sysmon ack\n");
		goto out_unlock;
	}

	if (!sysmon->ssr_ack)
		FUNC0(sysmon->dev,
			"unexpected response to sysmon shutdown request\n");

out_unlock:
	FUNC3(&sysmon->lock);
}