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
struct list_head {int dummy; } ;
struct bfa_sgpg_wqe_s {int nsgpg; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  qe; int /*<<< orphan*/  sgpg_q; } ;
struct bfa_sgpg_mod_s {int free_sgpgs; int num_sgpgs; int /*<<< orphan*/  sgpg_wait_q; int /*<<< orphan*/  sgpg_q; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
 struct bfa_sgpg_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct bfa_sgpg_wqe_s* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct bfa_s *bfa, struct list_head *sgpg_q, int nsgpg)
{
	struct bfa_sgpg_mod_s *mod = FUNC0(bfa);
	struct bfa_sgpg_wqe_s *wqe;

	mod->free_sgpgs += nsgpg;
	FUNC1(mod->free_sgpgs > mod->num_sgpgs);

	FUNC6(sgpg_q, &mod->sgpg_q);

	if (FUNC5(&mod->sgpg_wait_q))
		return;

	/*
	 * satisfy as many waiting requests as possible
	 */
	do {
		wqe = FUNC2(&mod->sgpg_wait_q);
		if (mod->free_sgpgs < wqe->nsgpg)
			nsgpg = mod->free_sgpgs;
		else
			nsgpg = wqe->nsgpg;
		FUNC3(bfa, &wqe->sgpg_q, nsgpg);
		wqe->nsgpg -= nsgpg;
		if (wqe->nsgpg == 0) {
			FUNC4(&wqe->qe);
			wqe->cbfn(wqe->cbarg);
		}
	} while (mod->free_sgpgs && !FUNC5(&mod->sgpg_wait_q));
}