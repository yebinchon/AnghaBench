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
struct csio_mbm {int /*<<< orphan*/  cbfn_q; int /*<<< orphan*/  req_q; int /*<<< orphan*/ * mcurrent; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct csio_mbm *mbm)
{
	FUNC1(&mbm->timer);

	FUNC0(mbm->mcurrent == NULL);
	FUNC0(FUNC2(&mbm->req_q));
	FUNC0(FUNC2(&mbm->cbfn_q));
}