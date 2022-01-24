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
struct csio_lnode {int /*<<< orphan*/  vnp_flowid; int /*<<< orphan*/  fcf_flowid; struct csio_hw* hwp; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*,struct csio_mb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (struct csio_hw*,struct csio_mb*)) ; 
 scalar_t__ FUNC3 (struct csio_hw*,struct csio_mb*) ; 
 struct csio_mb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_err_nomem ; 

__attribute__((used)) static int
FUNC6(struct csio_lnode *ln,
		void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
	struct csio_hw *hw = ln->hwp;
	struct csio_mb  *mbp;

	/* Allocate Mbox request */
	mbp = FUNC4(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp) {
		FUNC0(hw, n_err_nomem);
		return -ENOMEM;
	}

	/* Prepare VNP Command */
	FUNC2(ln, mbp,
				    CSIO_MB_DEFAULT_TMO,
				    ln->fcf_flowid,
				    ln->vnp_flowid,
				    cbfn);

	/* Issue MBOX cmd */
	if (FUNC3(hw, mbp)) {
		FUNC1(hw, "Failed to issue mbox FCoE VNP command\n");
		FUNC5(mbp, hw->mb_mempool);
		return -EINVAL;
	}

	return 0;
}