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
struct csio_mgmtm {struct csio_hw* hw; int /*<<< orphan*/  cbfn_q; int /*<<< orphan*/  active_q; int /*<<< orphan*/  mgmt_timer; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csio_mgmt_tmo_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct csio_mgmtm *mgmtm, struct csio_hw *hw)
{
	FUNC1(&mgmtm->mgmt_timer, csio_mgmt_tmo_handler, 0);

	FUNC0(&mgmtm->active_q);
	FUNC0(&mgmtm->cbfn_q);

	mgmtm->hw = hw;
	/*mgmtm->iq_idx = hw->fwevt_iq_idx;*/

	return 0;
}