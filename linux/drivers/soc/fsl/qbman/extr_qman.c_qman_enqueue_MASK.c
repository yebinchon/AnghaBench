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
typedef  int u8 ;
struct qman_portal {int /*<<< orphan*/  p; scalar_t__ use_eqcr_ci_stashing; } ;
struct qman_fq {int /*<<< orphan*/  fqid; } ;
struct qm_fd {int dummy; } ;
struct qm_eqcr_entry {struct qm_fd fd; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_EQCR_VERB_CMD_ENQUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*) ; 
 struct qman_portal* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qm_eqcr_entry* FUNC8 (int /*<<< orphan*/ *) ; 
 struct qm_eqcr_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct qm_eqcr_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct qman_portal*,int) ; 

int FUNC13(struct qman_fq *fq, const struct qm_fd *fd)
{
	struct qman_portal *p;
	struct qm_eqcr_entry *eq;
	unsigned long irqflags;
	u8 avail;

	p = FUNC2();
	FUNC4(irqflags);

	if (p->use_eqcr_ci_stashing) {
		/*
		 * The stashing case is easy, only update if we need to in
		 * order to try and liberate ring entries.
		 */
		eq = FUNC9(&p->p);
	} else {
		/*
		 * The non-stashing case is harder, need to prefetch ahead of
		 * time.
		 */
		avail = FUNC6(&p->p);
		if (avail < 2)
			FUNC12(p, avail);
		eq = FUNC8(&p->p);
	}

	if (FUNC11(!eq))
		goto out;

	FUNC10(eq, fq->fqid);
	eq->tag = FUNC0(FUNC1(fq));
	eq->fd = *fd;

	FUNC7(&p->p, QM_EQCR_VERB_CMD_ENQUEUE);
out:
	FUNC3(irqflags);
	FUNC5();
	return 0;
}