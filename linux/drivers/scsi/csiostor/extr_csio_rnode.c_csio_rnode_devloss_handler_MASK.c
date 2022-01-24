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
struct csio_rnode {int /*<<< orphan*/  sm; } ;
struct csio_lnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_RNFE_CLOSE ; 
 scalar_t__ FUNC0 (struct csio_rnode*) ; 
 scalar_t__ FUNC1 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,struct csio_rnode*) ; 
 struct csio_lnode* FUNC4 (struct csio_rnode*) ; 

void
FUNC5(struct csio_rnode *rn)
{
	struct csio_lnode *ln = FUNC4(rn);

	/* ignore if same rnode came back as online */
	if (FUNC0(rn))
		return;

	FUNC2(&rn->sm, CSIO_RNFE_CLOSE);

	/* Free rn if in uninit state */
	if (FUNC1(rn))
		FUNC3(ln, rn);
}