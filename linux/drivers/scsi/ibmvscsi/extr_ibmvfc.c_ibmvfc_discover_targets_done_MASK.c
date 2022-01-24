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
typedef  int u32 ;
struct ibmvfc_host {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_targets; } ;
struct ibmvfc_event {TYPE_1__* xfer_iu; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct ibmvfc_discover_targets {int /*<<< orphan*/  error; int /*<<< orphan*/  status; int /*<<< orphan*/  num_written; TYPE_2__ common; } ;
struct TYPE_3__ {struct ibmvfc_discover_targets discover_targets; } ;

/* Variables and functions */
 int IBMVFC_DEFAULT_LOG_LEVEL ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_ALLOC_TGTS ; 
 int /*<<< orphan*/  IBMVFC_LINK_DEAD ; 
#define  IBMVFC_MAD_DRIVER_FAILED 130 
#define  IBMVFC_MAD_FAILED 129 
#define  IBMVFC_MAD_SUCCESS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_host*,int,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ibmvfc_event *evt)
{
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_discover_targets *rsp = &evt->xfer_iu->discover_targets;
	u32 mad_status = FUNC0(rsp->common.status);
	int level = IBMVFC_DEFAULT_LOG_LEVEL;

	switch (mad_status) {
	case IBMVFC_MAD_SUCCESS:
		FUNC3(vhost, "Discover Targets succeeded\n");
		vhost->num_targets = FUNC1(rsp->num_written);
		FUNC9(vhost, IBMVFC_HOST_ACTION_ALLOC_TGTS);
		break;
	case IBMVFC_MAD_FAILED:
		level += FUNC8(vhost);
		FUNC7(vhost, level, "Discover Targets failed: %s (%x:%x)\n",
			   FUNC5(FUNC0(rsp->status), FUNC0(rsp->error)),
			   FUNC0(rsp->status), FUNC0(rsp->error));
		break;
	case IBMVFC_MAD_DRIVER_FAILED:
		break;
	default:
		FUNC2(vhost->dev, "Invalid Discover Targets response: 0x%x\n", mad_status);
		FUNC6(vhost, IBMVFC_LINK_DEAD);
		break;
	}

	FUNC4(evt);
	FUNC10(&vhost->work_wait_q);
}