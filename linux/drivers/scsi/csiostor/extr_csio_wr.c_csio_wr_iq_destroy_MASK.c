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
struct csio_iq_params {int fl0id; int fl1id; int /*<<< orphan*/  type; int /*<<< orphan*/  iqid; scalar_t__ vfn; int /*<<< orphan*/  pfn; } ;
struct csio_hw {int /*<<< orphan*/  mb_mempool; int /*<<< orphan*/  pfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_MB_DEFAULT_TMO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_IQ_TYPE_FL_INT_CAP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,struct csio_mb*,void*,int /*<<< orphan*/ ,struct csio_iq_params*,void (*) (struct csio_hw*,struct csio_mb*)) ; 
 int FUNC1 (struct csio_hw*,struct csio_mb*) ; 
 int FUNC2 (struct csio_hw*,int) ; 
 int FUNC3 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int) ; 
 int FUNC5 (struct csio_hw*,struct csio_mb*,int) ; 
 struct csio_mb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_mb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_iq_params*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw, void *priv, int iq_idx,
		   void (*cbfn)(struct csio_hw *, struct csio_mb *))
{
	int rv = 0;
	struct csio_mb  *mbp;
	struct csio_iq_params iqp;
	int flq_idx;

	FUNC8(&iqp, 0, sizeof(struct csio_iq_params));

	mbp = FUNC6(hw->mb_mempool, GFP_ATOMIC);
	if (!mbp)
		return -ENOMEM;

	iqp.pfn		= hw->pfn;
	iqp.vfn		= 0;
	iqp.iqid	= FUNC4(hw, iq_idx);
	iqp.type	= FW_IQ_TYPE_FL_INT_CAP;

	flq_idx = FUNC3(hw, iq_idx);
	if (flq_idx != -1)
		iqp.fl0id = FUNC2(hw, flq_idx);
	else
		iqp.fl0id = 0xFFFF;

	iqp.fl1id = 0xFFFF;

	FUNC0(hw, mbp, priv, CSIO_MB_DEFAULT_TMO, &iqp, cbfn);

	rv = FUNC1(hw, mbp);
	if (rv != 0) {
		FUNC7(mbp, hw->mb_mempool);
		return rv;
	}

	if (cbfn != NULL)
		return 0;

	return FUNC5(hw, mbp, iq_idx);
}