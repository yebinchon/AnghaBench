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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qbman_pull_desc {int dummy; } ;
struct dpaa2_io_store {int /*<<< orphan*/ * swp; scalar_t__ max; int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; } ;
struct dpaa2_io {int /*<<< orphan*/ * swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct qbman_pull_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct qbman_pull_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qbman_pull_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qbman_pull_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct qbman_pull_desc*) ; 
 struct dpaa2_io* FUNC5 (struct dpaa2_io*) ; 

int FUNC6(struct dpaa2_io *d, u32 fqid,
			     struct dpaa2_io_store *s)
{
	struct qbman_pull_desc pd;
	int err;

	FUNC0(&pd);
	FUNC3(&pd, s->vaddr, s->paddr, 1);
	FUNC2(&pd, (u8)s->max);
	FUNC1(&pd, fqid);

	d = FUNC5(d);
	if (!d)
		return -ENODEV;
	s->swp = d->swp;
	err = FUNC4(d->swp, &pd);
	if (err)
		s->swp = NULL;

	return err;
}