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
struct zfcp_port {int /*<<< orphan*/  adapter; } ;
struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct zfcp_port* data; } ;
struct TYPE_3__ {int fsf_status; } ;
struct TYPE_4__ {TYPE_1__ header; } ;

/* Variables and functions */
#define  FSF_ADAPTER_STATUS_AVAILABLE 130 
#define  FSF_GOOD 129 
#define  FSF_PORT_HANDLE_NOT_VALID 128 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct zfcp_fsf_req *req)
{
	struct zfcp_port *port = req->data;

	if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
		return;

	switch (req->qtcb->header.fsf_status) {
	case FSF_PORT_HANDLE_NOT_VALID:
		FUNC0(port->adapter, 0, "fscph_1");
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_ADAPTER_STATUS_AVAILABLE:
		break;
	case FSF_GOOD:
		FUNC1(port, ZFCP_STATUS_COMMON_OPEN);
		break;
	}
}