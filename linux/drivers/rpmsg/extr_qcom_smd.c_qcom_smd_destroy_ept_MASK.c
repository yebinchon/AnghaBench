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
struct rpmsg_endpoint {int /*<<< orphan*/  refcount; } ;
struct qcom_smd_endpoint {struct qcom_smd_channel* qsch; } ;
struct qcom_smd_channel {int /*<<< orphan*/ * qsept; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ept_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_smd_channel*) ; 
 struct qcom_smd_endpoint* FUNC2 (struct rpmsg_endpoint*) ; 

__attribute__((used)) static void FUNC3(struct rpmsg_endpoint *ept)
{
	struct qcom_smd_endpoint *qsept = FUNC2(ept);
	struct qcom_smd_channel *ch = qsept->qsch;

	FUNC1(ch);
	ch->qsept = NULL;
	FUNC0(&ept->refcount, __ept_release);
}