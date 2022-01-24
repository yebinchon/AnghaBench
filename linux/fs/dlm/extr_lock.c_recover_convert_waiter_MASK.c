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
struct TYPE_2__ {int /*<<< orphan*/  h_nodeid; } ;
struct dlm_message {TYPE_1__ m_header; int /*<<< orphan*/  m_result; int /*<<< orphan*/  m_type; int /*<<< orphan*/  m_flags; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; scalar_t__ lkb_rqmode; int /*<<< orphan*/  lkb_flags; int /*<<< orphan*/  lkb_resource; int /*<<< orphan*/  lkb_nodeid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_IFL_RESEND ; 
 int /*<<< orphan*/  DLM_IFL_STUB_MS ; 
 scalar_t__ DLM_LOCK_IV ; 
 int /*<<< orphan*/  DLM_MSG_CONVERT_REPLY ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  RSB_RECOVER_CONVERT ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*,struct dlm_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC6(struct dlm_ls *ls, struct dlm_lkb *lkb,
				   struct dlm_message *ms_stub)
{
	if (FUNC3(lkb)) {
		FUNC1(lkb);
		FUNC2(ms_stub, 0, sizeof(struct dlm_message));
		ms_stub->m_flags = DLM_IFL_STUB_MS;
		ms_stub->m_type = DLM_MSG_CONVERT_REPLY;
		ms_stub->m_result = -EINPROGRESS;
		ms_stub->m_header.h_nodeid = lkb->lkb_nodeid;
		FUNC0(lkb, ms_stub);

		/* Same special case as in receive_rcom_lock_args() */
		lkb->lkb_grmode = DLM_LOCK_IV;
		FUNC4(lkb->lkb_resource, RSB_RECOVER_CONVERT);
		FUNC5(lkb);

	} else if (lkb->lkb_rqmode >= lkb->lkb_grmode) {
		lkb->lkb_flags |= DLM_IFL_RESEND;
	}

	/* lkb->lkb_rqmode < lkb->lkb_grmode shouldn't happen since down
	   conversions are async; there's no reply from the remote master */
}