#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct viosrp_fast_fail {TYPE_3__ common; } ;
struct TYPE_5__ {struct viosrp_fast_fail fast_fail; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;
struct srp_event_struct {TYPE_2__ iu; } ;
struct ibmvscsi_host_data {TYPE_4__* host; int /*<<< orphan*/  pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VIOSRP_ENABLE_FAST_FAIL ; 
 int /*<<< orphan*/  VIOSRP_MAD_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fast_fail ; 
 int /*<<< orphan*/  fast_fail_rsp ; 
 struct srp_event_struct* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ; 
 int info_timeout ; 
 int /*<<< orphan*/  FUNC5 (struct srp_event_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct viosrp_fast_fail*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ibmvscsi_host_data *hostdata)
{
	int rc;
	unsigned long flags;
	struct viosrp_fast_fail *fast_fail_mad;
	struct srp_event_struct *evt_struct;

	if (!fast_fail) {
		FUNC7(hostdata);
		return 0;
	}

	evt_struct = FUNC3(&hostdata->pool);
	FUNC0(!evt_struct);

	FUNC5(evt_struct, fast_fail_rsp, VIOSRP_MAD_FORMAT, info_timeout);

	fast_fail_mad = &evt_struct->iu.mad.fast_fail;
	FUNC6(fast_fail_mad, 0, sizeof(*fast_fail_mad));
	fast_fail_mad->common.type = FUNC2(VIOSRP_ENABLE_FAST_FAIL);
	fast_fail_mad->common.length = FUNC1(sizeof(*fast_fail_mad));

	FUNC8(hostdata->host->host_lock, flags);
	rc = FUNC4(evt_struct, hostdata, info_timeout * 2);
	FUNC9(hostdata->host->host_lock, flags);
	return rc;
}