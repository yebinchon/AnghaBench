#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int u64 ;
struct ntb_dev {TYPE_3__* msi; TYPE_1__* pdev; } ;
struct TYPE_5__ {int address_lo; scalar_t__ address_hi; } ;
struct msi_desc {TYPE_2__ msg; } ;
typedef  int resource_size_t ;
struct TYPE_6__ {int base_addr; int end_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SZ_32K ; 
 struct msi_desc* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_dev*,int,int) ; 
 int FUNC3 (struct ntb_dev*,int,int,int*,int*,int*) ; 
 int FUNC4 (struct ntb_dev*,int,int,int,int) ; 
 int FUNC5 (struct ntb_dev*,int) ; 
 int FUNC6 (struct ntb_dev*) ; 
 int FUNC7 (int,int) ; 

int FUNC8(struct ntb_dev *ntb)
{
	struct msi_desc *desc;
	u64 addr;
	int peer, peer_widx;
	resource_size_t addr_align, size_align, size_max;
	resource_size_t mw_size = SZ_32K;
	resource_size_t mw_min_size = mw_size;
	int i;
	int ret;

	if (!ntb->msi)
		return -EINVAL;

	desc = FUNC0(&ntb->pdev->dev);
	addr = desc->msg.address_lo + ((uint64_t)desc->msg.address_hi << 32);

	for (peer = 0; peer < FUNC6(ntb); peer++) {
		peer_widx = FUNC5(ntb, peer);
		if (peer_widx < 0)
			return peer_widx;

		ret = FUNC3(ntb, peer, peer_widx, &addr_align,
				       NULL, NULL);
		if (ret)
			return ret;

		addr &= ~(addr_align - 1);
	}

	for (peer = 0; peer < FUNC6(ntb); peer++) {
		peer_widx = FUNC5(ntb, peer);
		if (peer_widx < 0) {
			ret = peer_widx;
			goto error_out;
		}

		ret = FUNC3(ntb, peer, peer_widx, NULL,
				       &size_align, &size_max);
		if (ret)
			goto error_out;

		mw_size = FUNC7(mw_size, size_align);
		mw_size = FUNC1(mw_size, size_max);
		if (mw_size < mw_min_size)
			mw_min_size = mw_size;

		ret = FUNC4(ntb, peer, peer_widx,
				       addr, mw_size);
		if (ret)
			goto error_out;
	}

	ntb->msi->base_addr = addr;
	ntb->msi->end_addr = addr + mw_min_size;

	return 0;

error_out:
	for (i = 0; i < peer; i++) {
		peer_widx = FUNC5(ntb, peer);
		if (peer_widx < 0)
			continue;

		FUNC2(ntb, i, peer_widx);
	}

	return ret;
}