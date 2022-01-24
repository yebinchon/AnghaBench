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
struct csio_mbm {int /*<<< orphan*/  cbfn_q; int /*<<< orphan*/  req_q; int /*<<< orphan*/  timer; struct csio_hw* hw; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_mbm*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void (*) (struct timer_list*),int /*<<< orphan*/ ) ; 

int
FUNC3(struct csio_mbm *mbm, struct csio_hw *hw,
	      void (*timer_fn)(struct timer_list *))
{
	mbm->hw = hw;
	FUNC2(&mbm->timer, timer_fn, 0);

	FUNC0(&mbm->req_q);
	FUNC0(&mbm->cbfn_q);
	FUNC1(mbm, -1);

	return 0;
}