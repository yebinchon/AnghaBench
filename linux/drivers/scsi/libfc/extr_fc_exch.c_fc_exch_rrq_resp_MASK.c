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
struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
#define  ELS_LS_ACC 129 
#define  ELS_LS_RJT 128 
 int /*<<< orphan*/  FUNC0 (struct fc_exch*,char*,...) ; 
 int FC_EX_CLOSED ; 
 int FC_EX_TIMEOUT ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 unsigned int FUNC6 (struct fc_frame*) ; 

__attribute__((used)) static void FUNC7(struct fc_seq *sp, struct fc_frame *fp, void *arg)
{
	struct fc_exch *aborted_ep = arg;
	unsigned int op;

	if (FUNC1(fp)) {
		int err = FUNC2(fp);

		if (err == -FC_EX_CLOSED || err == -FC_EX_TIMEOUT)
			goto cleanup;
		FUNC0(aborted_ep, "Cannot process RRQ, "
			    "frame error %d\n", err);
		return;
	}

	op = FUNC6(fp);
	FUNC5(fp);

	switch (op) {
	case ELS_LS_RJT:
		FUNC0(aborted_ep, "LS_RJT for RRQ\n");
		/* fall through */
	case ELS_LS_ACC:
		goto cleanup;
	default:
		FUNC0(aborted_ep, "unexpected response op %x for RRQ\n",
			    op);
		return;
	}

cleanup:
	FUNC3(&aborted_ep->seq);
	/* drop hold for rec qual */
	FUNC4(aborted_ep);
}