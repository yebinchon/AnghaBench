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
struct zfcp_port {int /*<<< orphan*/  d_id; struct zfcp_adapter* adapter; } ;
struct TYPE_7__ {struct zfcp_fc_req* handler_data; int /*<<< orphan*/  handler; int /*<<< orphan*/ * resp; int /*<<< orphan*/ * req; struct zfcp_port* port; } ;
struct TYPE_8__ {int /*<<< orphan*/  adisc_port_id; int /*<<< orphan*/  adisc_cmd; void* adisc_wwnn; void* adisc_wwpn; } ;
struct TYPE_5__ {TYPE_4__ req; TYPE_4__ rsp; } ;
struct TYPE_6__ {TYPE_1__ adisc; } ;
struct zfcp_fc_req {TYPE_3__ ct_els; TYPE_2__ u; int /*<<< orphan*/  sg_rsp; int /*<<< orphan*/  sg_req; } ;
struct zfcp_adapter {struct Scsi_Host* scsi_host; } ;
struct fc_els_adisc {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_ADISC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ZFCP_FC_CTELS_TMO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct zfcp_fc_req*) ; 
 struct zfcp_fc_req* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  zfcp_fc_adisc_handler ; 
 int /*<<< orphan*/  zfcp_fc_req_cache ; 
 int FUNC8 (struct zfcp_adapter*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct zfcp_port *port)
{
	struct zfcp_fc_req *fc_req;
	struct zfcp_adapter *adapter = port->adapter;
	struct Scsi_Host *shost = adapter->scsi_host;
	int ret;

	fc_req = FUNC6(zfcp_fc_req_cache, GFP_ATOMIC);
	if (!fc_req)
		return -ENOMEM;

	fc_req->ct_els.port = port;
	fc_req->ct_els.req = &fc_req->sg_req;
	fc_req->ct_els.resp = &fc_req->sg_rsp;
	FUNC7(&fc_req->sg_req, &fc_req->u.adisc.req,
		    sizeof(struct fc_els_adisc));
	FUNC7(&fc_req->sg_rsp, &fc_req->u.adisc.rsp,
		    sizeof(struct fc_els_adisc));

	fc_req->ct_els.handler = zfcp_fc_adisc_handler;
	fc_req->ct_els.handler_data = fc_req;

	/* acc. to FC-FS, hard_nport_id in ADISC should not be set for ports
	   without FC-AL-2 capability, so we don't set it */
	fc_req->u.adisc.req.adisc_wwpn = FUNC0(FUNC3(shost));
	fc_req->u.adisc.req.adisc_wwnn = FUNC0(FUNC1(shost));
	fc_req->u.adisc.req.adisc_cmd = ELS_ADISC;
	FUNC4(fc_req->u.adisc.req.adisc_port_id, FUNC2(shost));

	ret = FUNC8(adapter, port->d_id, &fc_req->ct_els,
				ZFCP_FC_CTELS_TMO);
	if (ret)
		FUNC5(zfcp_fc_req_cache, fc_req);

	return ret;
}