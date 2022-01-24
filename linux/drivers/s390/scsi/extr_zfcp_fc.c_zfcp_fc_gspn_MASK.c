#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_ct_els {int status; int /*<<< orphan*/ * resp; int /*<<< orphan*/ * req; int /*<<< orphan*/ * handler_data; int /*<<< orphan*/  handler; } ;
struct TYPE_11__ {char* fp_name; int /*<<< orphan*/  fp_fid; } ;
struct zfcp_fc_gspn_rsp {TYPE_5__ gspn; int /*<<< orphan*/  ct_hdr; } ;
struct TYPE_7__ {struct zfcp_fc_gspn_rsp rsp; struct zfcp_fc_gspn_rsp req; } ;
struct TYPE_8__ {TYPE_1__ gspn; } ;
struct zfcp_fc_req {int /*<<< orphan*/  sg_rsp; int /*<<< orphan*/  sg_req; TYPE_2__ u; struct zfcp_fsf_ct_els ct_els; } ;
struct zfcp_fc_gspn_req {TYPE_5__ gspn; int /*<<< orphan*/  ct_hdr; } ;
struct zfcp_adapter {int /*<<< orphan*/  scsi_host; TYPE_4__* ccw_device; TYPE_3__* gs; } ;
struct TYPE_12__ {int /*<<< orphan*/  nodename; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_NS_GSPN_ID ; 
 scalar_t__ FC_PORTTYPE_NPIV ; 
 int /*<<< orphan*/  FC_SYMBOLIC_NAME_SIZE ; 
 int /*<<< orphan*/  ZFCP_FC_CTELS_TMO ; 
 int /*<<< orphan*/  completion ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct zfcp_fc_gspn_rsp*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fc_complete ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct zfcp_fsf_ct_els*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct zfcp_adapter *adapter,
			struct zfcp_fc_req *fc_req)
{
	FUNC0(completion);
	char devno[] = "DEVNO:";
	struct zfcp_fsf_ct_els *ct_els = &fc_req->ct_els;
	struct zfcp_fc_gspn_req *gspn_req = &fc_req->u.gspn.req;
	struct zfcp_fc_gspn_rsp *gspn_rsp = &fc_req->u.gspn.rsp;
	int ret;

	FUNC12(&gspn_req->ct_hdr, FC_NS_GSPN_ID,
			   FC_SYMBOLIC_NAME_SIZE);
	FUNC5(gspn_req->gspn.fp_fid, FUNC2(adapter->scsi_host));

	FUNC7(&fc_req->sg_req, gspn_req, sizeof(*gspn_req));
	FUNC7(&fc_req->sg_rsp, gspn_rsp, sizeof(*gspn_rsp));

	ct_els->handler = zfcp_fc_complete;
	ct_els->handler_data = &completion;
	ct_els->req = &fc_req->sg_req;
	ct_els->resp = &fc_req->sg_rsp;

	ret = FUNC13(&adapter->gs->ds, ct_els, NULL,
			       ZFCP_FC_CTELS_TMO);
	if (ret)
		return ret;

	FUNC11(&completion);
	if (ct_els->status)
		return ct_els->status;

	if (FUNC3(adapter->scsi_host) == FC_PORTTYPE_NPIV &&
	    !(FUNC10(gspn_rsp->gspn.fp_name, devno)))
		FUNC8(FUNC4(adapter->scsi_host),
			 FC_SYMBOLIC_NAME_SIZE, "%s%s %s NAME: %s",
			 gspn_rsp->gspn.fp_name, devno,
			 FUNC1(&adapter->ccw_device->dev),
			 FUNC6()->nodename);
	else
		FUNC9(FUNC4(adapter->scsi_host),
			gspn_rsp->gspn.fp_name, FC_SYMBOLIC_NAME_SIZE);

	return 0;
}