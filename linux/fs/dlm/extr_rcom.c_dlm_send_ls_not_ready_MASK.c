#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcom_config {int /*<<< orphan*/  rf_lvblen; } ;
struct TYPE_2__ {int h_version; int h_length; int /*<<< orphan*/  h_cmd; int /*<<< orphan*/  h_nodeid; int /*<<< orphan*/  h_lockspace; } ;
struct dlm_rcom {scalar_t__ rc_buf; int /*<<< orphan*/  rc_result; int /*<<< orphan*/  rc_seq; int /*<<< orphan*/  rc_seq_reply; int /*<<< orphan*/  rc_id; int /*<<< orphan*/  rc_type; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;

/* Variables and functions */
 int DLM_HEADER_MAJOR ; 
 int DLM_HEADER_MINOR ; 
 int /*<<< orphan*/  DLM_RCOM ; 
 int /*<<< orphan*/  DLM_RCOM_STATUS_REPLY ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ESRCH ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_mhandle*) ; 
 struct dlm_mhandle* FUNC2 (int,int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC6(int nodeid, struct dlm_rcom *rc_in)
{
	struct dlm_rcom *rc;
	struct rcom_config *rf;
	struct dlm_mhandle *mh;
	char *mb;
	int mb_len = sizeof(struct dlm_rcom) + sizeof(struct rcom_config);

	mh = FUNC2(nodeid, mb_len, GFP_NOFS, &mb);
	if (!mh)
		return -ENOBUFS;
	FUNC5(mb, 0, mb_len);

	rc = (struct dlm_rcom *) mb;

	rc->rc_header.h_version = (DLM_HEADER_MAJOR | DLM_HEADER_MINOR);
	rc->rc_header.h_lockspace = rc_in->rc_header.h_lockspace;
	rc->rc_header.h_nodeid = FUNC3();
	rc->rc_header.h_length = mb_len;
	rc->rc_header.h_cmd = DLM_RCOM;

	rc->rc_type = DLM_RCOM_STATUS_REPLY;
	rc->rc_id = rc_in->rc_id;
	rc->rc_seq_reply = rc_in->rc_seq;
	rc->rc_result = -ESRCH;

	rf = (struct rcom_config *) rc->rc_buf;
	rf->rf_lvblen = FUNC0(~0U);

	FUNC4(rc);
	FUNC1(mh);

	return 0;
}