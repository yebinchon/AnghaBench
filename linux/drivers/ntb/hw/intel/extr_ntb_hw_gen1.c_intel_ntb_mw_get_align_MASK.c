#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct intel_ntb_dev {int b2b_idx; int b2b_off; TYPE_1__ ntb; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 int NTB_DEF_PEER_IDX ; 
 int FUNC0 (struct intel_ntb_dev*,int) ; 
 struct intel_ntb_dev* FUNC1 (struct ntb_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ntb_dev *ntb, int pidx, int idx,
			   resource_size_t *addr_align,
			   resource_size_t *size_align,
			   resource_size_t *size_max)
{
	struct intel_ntb_dev *ndev = FUNC1(ntb);
	resource_size_t bar_size, mw_size;
	int bar;

	if (pidx != NTB_DEF_PEER_IDX)
		return -EINVAL;

	if (idx >= ndev->b2b_idx && !ndev->b2b_off)
		idx += 1;

	bar = FUNC0(ndev, idx);
	if (bar < 0)
		return bar;

	bar_size = FUNC2(ndev->ntb.pdev, bar);

	if (idx == ndev->b2b_idx)
		mw_size = bar_size - ndev->b2b_off;
	else
		mw_size = bar_size;

	if (addr_align)
		*addr_align = FUNC2(ndev->ntb.pdev, bar);

	if (size_align)
		*size_align = 1;

	if (size_max)
		*size_max = mw_size;

	return 0;
}