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
struct TYPE_2__ {int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_nodeid; } ;
struct dlm_rcom {scalar_t__ rc_id; TYPE_1__ rc_header; int /*<<< orphan*/  rc_type; } ;
struct dlm_ls {scalar_t__ ls_rcom_seq; int /*<<< orphan*/  ls_rcom_spin; int /*<<< orphan*/  ls_wait_general; int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_recover_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_RCOM_READY ; 
 int /*<<< orphan*/  LSFL_RCOM_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dlm_rcom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
	FUNC4(&ls->ls_rcom_spin);
	if (!FUNC6(LSFL_RCOM_WAIT, &ls->ls_flags) ||
	    rc_in->rc_id != ls->ls_rcom_seq) {
		FUNC1(ls, "reject reply %d from %d seq %llx expect %llx",
			  rc_in->rc_type, rc_in->rc_header.h_nodeid,
			  (unsigned long long)rc_in->rc_id,
			  (unsigned long long)ls->ls_rcom_seq);
		goto out;
	}
	FUNC2(ls->ls_recover_buf, rc_in, rc_in->rc_header.h_length);
	FUNC3(LSFL_RCOM_READY, &ls->ls_flags);
	FUNC0(LSFL_RCOM_WAIT, &ls->ls_flags);
	FUNC7(&ls->ls_wait_general);
 out:
	FUNC5(&ls->ls_rcom_spin);
}