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
struct dlm_recover {scalar_t__ seq; } ;
struct dlm_ls {unsigned long long ls_recover_dir_sent_res; int ls_recover_dir_sent_msg; int /*<<< orphan*/  ls_recoverd_active; int /*<<< orphan*/  ls_generation; scalar_t__ ls_recover_locks_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_RS_DIR ; 
 int /*<<< orphan*/  DLM_RS_DONE ; 
 int /*<<< orphan*/  DLM_RS_LOCKS ; 
 int /*<<< orphan*/  DLM_RS_NODES ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ls*) ; 
 scalar_t__ FUNC7 (struct dlm_ls*) ; 
 int FUNC8 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC9 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC10 (struct dlm_ls*) ; 
 int FUNC11 (struct dlm_ls*) ; 
 int FUNC12 (struct dlm_ls*) ; 
 int FUNC13 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC14 (struct dlm_ls*) ; 
 int FUNC15 (struct dlm_ls*) ; 
 int FUNC16 (struct dlm_ls*) ; 
 int FUNC17 (struct dlm_ls*) ; 
 int FUNC18 (struct dlm_ls*,struct dlm_recover*,int*) ; 
 int FUNC19 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC20 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC21 (struct dlm_ls*) ; 
 int FUNC22 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC23 (struct dlm_ls*) ; 
 int FUNC24 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC25 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC26 (struct dlm_ls*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct dlm_ls*,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC28 (unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (struct dlm_ls*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC32(struct dlm_ls *ls, struct dlm_recover *rv)
{
	unsigned long start;
	int error, neg = 0;

	FUNC29(ls, "dlm_recover %llu", (unsigned long long)rv->seq);

	FUNC30(&ls->ls_recoverd_active);

	FUNC2(ls);

	FUNC4(ls);

	/*
	 * This list of root rsb's will be the basis of most of the recovery
	 * routines.
	 */

	FUNC5(ls);

	/*
	 * Add or remove nodes from the lockspace's ls_nodes list.
	 */

	error = FUNC18(ls, rv, &neg);
	if (error) {
		FUNC29(ls, "dlm_recover_members error %d", error);
		goto fail;
	}

	FUNC10(ls);

	ls->ls_recover_dir_sent_res = 0;
	ls->ls_recover_dir_sent_msg = 0;
	ls->ls_recover_locks_in = 0;

	FUNC26(ls, DLM_RS_NODES);

	error = FUNC19(ls);
	if (error) {
		FUNC29(ls, "dlm_recover_members_wait error %d", error);
		goto fail;
	}

	start = jiffies;

	/*
	 * Rebuild our own share of the directory by collecting from all other
	 * nodes their master rsb names that hash to us.
	 */

	error = FUNC11(ls);
	if (error) {
		FUNC29(ls, "dlm_recover_directory error %d", error);
		goto fail;
	}

	FUNC26(ls, DLM_RS_DIR);

	error = FUNC12(ls);
	if (error) {
		FUNC29(ls, "dlm_recover_directory_wait error %d", error);
		goto fail;
	}

	FUNC29(ls, "dlm_recover_directory %u out %u messages",
		  ls->ls_recover_dir_sent_res, ls->ls_recover_dir_sent_msg);

	/*
	 * We may have outstanding operations that are waiting for a reply from
	 * a failed node.  Mark these to be resent after recovery.  Unlock and
	 * cancel ops can just be completed.
	 */

	FUNC23(ls);

	error = FUNC24(ls);
	if (error)
		goto fail;

	if (neg || FUNC7(ls)) {
		/*
		 * Clear lkb's for departed nodes.
		 */

		FUNC20(ls);

		/*
		 * Get new master nodeid's for rsb's that were mastered on
		 * departed nodes.
		 */

		error = FUNC17(ls);
		if (error) {
			FUNC29(ls, "dlm_recover_masters error %d", error);
			goto fail;
		}

		/*
		 * Send our locks on remastered rsb's to the new masters.
		 */

		error = FUNC15(ls);
		if (error) {
			FUNC29(ls, "dlm_recover_locks error %d", error);
			goto fail;
		}

		FUNC26(ls, DLM_RS_LOCKS);

		error = FUNC16(ls);
		if (error) {
			FUNC29(ls, "dlm_recover_locks_wait error %d", error);
			goto fail;
		}

		FUNC29(ls, "dlm_recover_locks %u in",
			  ls->ls_recover_locks_in);

		/*
		 * Finalize state in master rsb's now that all locks can be
		 * checked.  This includes conversion resolution and lvb
		 * settings.
		 */

		FUNC21(ls);
	} else {
		/*
		 * Other lockspace members may be going through the "neg" steps
		 * while also adding us to the lockspace, in which case they'll
		 * be doing the recover_locks (RS_LOCKS) barrier.
		 */
		FUNC26(ls, DLM_RS_LOCKS);

		error = FUNC16(ls);
		if (error) {
			FUNC29(ls, "dlm_recover_locks_wait error %d", error);
			goto fail;
		}
	}

	FUNC25(ls);

	/*
	 * Purge directory-related requests that are saved in requestqueue.
	 * All dir requests from before recovery are invalid now due to the dir
	 * rebuild and will be resent by the requesting nodes.
	 */

	FUNC9(ls);

	FUNC26(ls, DLM_RS_DONE);

	error = FUNC13(ls);
	if (error) {
		FUNC29(ls, "dlm_recover_done_wait error %d", error);
		goto fail;
	}

	FUNC3(ls);

	FUNC0(ls);

	FUNC1(ls);

	error = FUNC27(ls, rv->seq);
	if (error) {
		FUNC29(ls, "enable_locking error %d", error);
		goto fail;
	}

	error = FUNC8(ls);
	if (error) {
		FUNC29(ls, "dlm_process_requestqueue error %d", error);
		goto fail;
	}

	error = FUNC22(ls);
	if (error) {
		FUNC29(ls, "dlm_recover_waiters_post error %d", error);
		goto fail;
	}

	FUNC14(ls);

	FUNC29(ls, "dlm_recover %llu generation %u done: %u ms",
		  (unsigned long long)rv->seq, ls->ls_generation,
		  FUNC28(jiffies - start));
	FUNC31(&ls->ls_recoverd_active);

	FUNC6(ls);
	return 0;

 fail:
	FUNC25(ls);
	FUNC29(ls, "dlm_recover %llu error %d",
		  (unsigned long long)rv->seq, error);
	FUNC31(&ls->ls_recoverd_active);
	return error;
}