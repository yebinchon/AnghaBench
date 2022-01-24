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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct rcom_lock {int dummy; } ;
struct TYPE_2__ {int h_length; } ;
struct dlm_rcom {int rc_type; scalar_t__ rc_seq_reply; scalar_t__ rc_seq; TYPE_1__ rc_header; } ;
struct dlm_ls {int ls_recover_status; scalar_t__ ls_recover_seq; int /*<<< orphan*/  ls_generation; int /*<<< orphan*/  ls_recover_lock; int /*<<< orphan*/  ls_flags; } ;

/* Variables and functions */
#define  DLM_RCOM_LOCK 135 
#define  DLM_RCOM_LOCK_REPLY 134 
#define  DLM_RCOM_LOOKUP 133 
#define  DLM_RCOM_LOOKUP_REPLY 132 
#define  DLM_RCOM_NAMES 131 
#define  DLM_RCOM_NAMES_REPLY 130 
#define  DLM_RCOM_STATUS 129 
#define  DLM_RCOM_STATUS_REPLY 128 
 int DLM_RS_DIR ; 
 int DLM_RS_NODES ; 
 int /*<<< orphan*/  LSFL_RECOVER_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*,char*,int,int,unsigned long long,unsigned long long,unsigned long long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC8 (struct dlm_ls*,struct dlm_rcom*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
	int lock_size = sizeof(struct dlm_rcom) + sizeof(struct rcom_lock);
	int stop, reply = 0, names = 0, lookup = 0, lock = 0;
	uint32_t status;
	uint64_t seq;

	switch (rc->rc_type) {
	case DLM_RCOM_STATUS_REPLY:
		reply = 1;
		break;
	case DLM_RCOM_NAMES:
		names = 1;
		break;
	case DLM_RCOM_NAMES_REPLY:
		names = 1;
		reply = 1;
		break;
	case DLM_RCOM_LOOKUP:
		lookup = 1;
		break;
	case DLM_RCOM_LOOKUP_REPLY:
		lookup = 1;
		reply = 1;
		break;
	case DLM_RCOM_LOCK:
		lock = 1;
		break;
	case DLM_RCOM_LOCK_REPLY:
		lock = 1;
		reply = 1;
		break;
	};

	FUNC9(&ls->ls_recover_lock);
	status = ls->ls_recover_status;
	stop = FUNC11(LSFL_RECOVER_STOP, &ls->ls_flags);
	seq = ls->ls_recover_seq;
	FUNC10(&ls->ls_recover_lock);

	if (stop && (rc->rc_type != DLM_RCOM_STATUS))
		goto ignore;

	if (reply && (rc->rc_seq_reply != seq))
		goto ignore;

	if (!(status & DLM_RS_NODES) && (names || lookup || lock))
		goto ignore;

	if (!(status & DLM_RS_DIR) && (lookup || lock))
		goto ignore;

	switch (rc->rc_type) {
	case DLM_RCOM_STATUS:
		FUNC7(ls, rc);
		break;

	case DLM_RCOM_NAMES:
		FUNC6(ls, rc);
		break;

	case DLM_RCOM_LOOKUP:
		FUNC4(ls, rc);
		break;

	case DLM_RCOM_LOCK:
		if (rc->rc_header.h_length < lock_size)
			goto Eshort;
		FUNC3(ls, rc);
		break;

	case DLM_RCOM_STATUS_REPLY:
		FUNC8(ls, rc);
		break;

	case DLM_RCOM_NAMES_REPLY:
		FUNC8(ls, rc);
		break;

	case DLM_RCOM_LOOKUP_REPLY:
		FUNC5(ls, rc);
		break;

	case DLM_RCOM_LOCK_REPLY:
		if (rc->rc_header.h_length < lock_size)
			goto Eshort;
		FUNC0(ls, rc);
		break;

	default:
		FUNC1(ls, "receive_rcom bad type %d", rc->rc_type);
	}
	return;

ignore:
	FUNC2(ls, "dlm_receive_rcom ignore msg %d "
		  "from %d %llu %llu recover seq %llu sts %x gen %u",
		   rc->rc_type,
		   nodeid,
		   (unsigned long long)rc->rc_seq,
		   (unsigned long long)rc->rc_seq_reply,
		   (unsigned long long)seq,
		   status, ls->ls_generation);
	return;
Eshort:
	FUNC1(ls, "recovery message %d from %d is too short",
		  rc->rc_type, nodeid);
}