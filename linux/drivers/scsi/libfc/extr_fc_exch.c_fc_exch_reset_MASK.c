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
struct fc_exch {int esb_stat; int /*<<< orphan*/  arg; int /*<<< orphan*/  ex_lock; struct fc_seq seq; int /*<<< orphan*/  ex_refcnt; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ESB_ST_REC_QUAL ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_EX_RST_CLEANUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_exch*) ; 
 int FUNC3 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_exch*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_exch*,struct fc_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_seq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct fc_exch *ep)
{
	struct fc_seq *sp;
	int rc = 1;

	FUNC9(&ep->ex_lock);
	ep->state |= FC_EX_RST_CLEANUP;
	FUNC6(ep);
	if (ep->esb_stat & ESB_ST_REC_QUAL)
		FUNC1(&ep->ex_refcnt);	/* drop hold for rec_qual */
	ep->esb_stat &= ~ESB_ST_REC_QUAL;
	sp = &ep->seq;
	rc = FUNC3(ep);
	FUNC10(&ep->ex_lock);

	FUNC4(ep);

	if (!rc)
		FUNC2(ep);

	FUNC7(ep, sp, FUNC0(-FC_EX_CLOSED));
	FUNC8(sp, NULL, ep->arg);
	FUNC5(ep);
}