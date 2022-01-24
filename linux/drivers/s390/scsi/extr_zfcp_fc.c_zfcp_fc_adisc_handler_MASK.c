#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_port {scalar_t__ wwpn; int /*<<< orphan*/  dev; int /*<<< orphan*/  status; scalar_t__ wwnn; } ;
struct TYPE_6__ {scalar_t__ status; struct zfcp_port* port; } ;
struct fc_els_adisc {int /*<<< orphan*/  adisc_wwpn; int /*<<< orphan*/  adisc_wwnn; } ;
struct TYPE_4__ {struct fc_els_adisc rsp; } ;
struct TYPE_5__ {TYPE_1__ adisc; } ;
struct zfcp_fc_req {TYPE_3__ ct_els; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_COMMON_OPEN ; 
 int /*<<< orphan*/  ZFCP_STATUS_PORT_LINK_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct zfcp_fc_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zfcp_fc_req_cache ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_port*) ; 

__attribute__((used)) static void FUNC8(void *data)
{
	struct zfcp_fc_req *fc_req = data;
	struct zfcp_port *port = fc_req->ct_els.port;
	struct fc_els_adisc *adisc_resp = &fc_req->u.adisc.rsp;

	if (fc_req->ct_els.status) {
		/* request rejected or timed out */
		FUNC5(port, ZFCP_STATUS_COMMON_ERP_FAILED,
					    "fcadh_1");
		goto out;
	}

	if (!port->wwnn)
		port->wwnn = FUNC2(adisc_resp->adisc_wwnn);

	if ((port->wwpn != FUNC2(adisc_resp->adisc_wwpn)) ||
	    !(FUNC1(&port->status) & ZFCP_STATUS_COMMON_OPEN)) {
		FUNC6(port, ZFCP_STATUS_COMMON_ERP_FAILED,
				     "fcadh_2");
		goto out;
	}

	/* port is good, unblock rport without going through erp */
	FUNC7(port);
 out:
	FUNC0(ZFCP_STATUS_PORT_LINK_TEST, &port->status);
	FUNC4(&port->dev);
	FUNC3(zfcp_fc_req_cache, fc_req);
}