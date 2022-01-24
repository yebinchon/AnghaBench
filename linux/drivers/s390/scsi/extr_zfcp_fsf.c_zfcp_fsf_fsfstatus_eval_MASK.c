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
struct zfcp_fsf_req {int status; TYPE_4__* adapter; TYPE_3__* qtcb; } ;
struct TYPE_8__ {TYPE_1__* ccw_device; } ;
struct TYPE_6__ {int fsf_status; int /*<<< orphan*/  fsf_command; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  FSF_ADAPTER_STATUS_AVAILABLE 129 
#define  FSF_UNKNOWN_COMMAND 128 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_fsf_req*) ; 

__attribute__((used)) static void FUNC4(struct zfcp_fsf_req *req)
{
	if (FUNC1(req->status & ZFCP_STATUS_FSFREQ_ERROR))
		return;

	switch (req->qtcb->header.fsf_status) {
	case FSF_UNKNOWN_COMMAND:
		FUNC0(&req->adapter->ccw_device->dev,
			"The FCP adapter does not recognize the command 0x%x\n",
			req->qtcb->header.fsf_command);
		FUNC2(req->adapter, 0, "fsfse_1");
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_ADAPTER_STATUS_AVAILABLE:
		FUNC3(req);
		break;
	}
}