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
struct csio_mb {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  pfn; } ;
struct csio_eq_params {int /*<<< orphan*/  eqid; scalar_t__ vfn; int /*<<< orphan*/  pfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,struct csio_mb*,void*,int /*<<< orphan*/ ,struct csio_eq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ; 
 int FUNC1 (struct csio_hw*,struct csio_mb*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,int) ; 
 int FUNC3 (struct csio_hw*,struct csio_mb*,int) ; 
 struct csio_mb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_eq_params*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct csio_hw *hw, void *priv, int eq_idx,
		   void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	int rv = 0;
	struct csio_mb  *mbp;
	struct csio_eq_params eqp;

	FUNC6(&eqp, 0, sizeof(struct csio_eq_params));

	mbp = FUNC4(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp)
		return -ENOMEM;

	eqp.pfn		= hw->pfn;
	eqp.vfn		= 0;
	eqp.eqid	= FUNC2(hw, eq_idx);

	FUNC0(hw, mbp, priv, CSIO_MB_DEFAULT_TMO, &eqp, cbfn);

	rv = FUNC1(hw, mbp);
	if (rv != 0) {
		FUNC5(mbp, hw->mb_mempool);
		return rv;
	}

	if (cbfn != NULL)
		return 0;

	return FUNC3(hw, mbp, eq_idx);
}