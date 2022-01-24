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
struct iscsi_tm_rsp {scalar_t__ response; } ;
struct iscsi_hdr {int /*<<< orphan*/  statsn; } ;
struct iscsi_conn {scalar_t__ tmf_state; int /*<<< orphan*/  ehwait; int /*<<< orphan*/  tmfrsp_pdus_cnt; scalar_t__ exp_statsn; } ;

/* Variables and functions */
 scalar_t__ ISCSI_TMF_RSP_COMPLETE ; 
 scalar_t__ ISCSI_TMF_RSP_NO_TASK ; 
 scalar_t__ TMF_FAILED ; 
 scalar_t__ TMF_NOT_FOUND ; 
 scalar_t__ TMF_QUEUED ; 
 scalar_t__ TMF_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
{
	struct iscsi_tm_rsp *tmf = (struct iscsi_tm_rsp *)hdr;

	conn->exp_statsn = FUNC0(hdr->statsn) + 1;
	conn->tmfrsp_pdus_cnt++;

	if (conn->tmf_state != TMF_QUEUED)
		return;

	if (tmf->response == ISCSI_TMF_RSP_COMPLETE)
		conn->tmf_state = TMF_SUCCESS;
	else if (tmf->response == ISCSI_TMF_RSP_NO_TASK)
		conn->tmf_state = TMF_NOT_FOUND;
	else
		conn->tmf_state = TMF_FAILED;
	FUNC1(&conn->ehwait);
}