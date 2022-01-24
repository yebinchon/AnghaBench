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
struct qcom_sysmon {int /*<<< orphan*/  qmi; int /*<<< orphan*/  subdev; int /*<<< orphan*/  rproc; int /*<<< orphan*/  nb; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_sysmon*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysmon_lock ; 
 int /*<<< orphan*/  sysmon_notifiers ; 

void FUNC7(struct qcom_sysmon *sysmon)
{
	if (!sysmon)
		return;

	FUNC3(&sysmon_lock);
	FUNC2(&sysmon->node);
	FUNC4(&sysmon_lock);

	FUNC0(&sysmon_notifiers, &sysmon->nb);

	FUNC6(sysmon->rproc, &sysmon->subdev);

	FUNC5(&sysmon->qmi);

	FUNC1(sysmon);
}