#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int peer_cnt; size_t part; int /*<<< orphan*/ * msg_locks; TYPE_1__* peers; } ;
struct TYPE_8__ {TYPE_2__* msgs; } ;
struct TYPE_7__ {int /*<<< orphan*/ * msgctl; } ;
struct TYPE_6__ {int /*<<< orphan*/  out; } ;
struct TYPE_5__ {int part; } ;

/* Variables and functions */
 int EINVAL ; 
 int IDT_MSG_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SWPxMSGCTL_PART ; 
 int /*<<< orphan*/  SWPxMSGCTL_REG ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__ ntdata_tbl ; 
 TYPE_3__* partdata_tbl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idt_ntb_dev* FUNC5 (struct ntb_dev*) ; 

__attribute__((used)) static int FUNC6(struct ntb_dev *ntb, int pidx, int midx,
				  u32 msg)
{
	struct idt_ntb_dev *ndev = FUNC5(ntb);
	unsigned long irqflags;
	u32 swpmsgctl = 0;

	if (midx < 0 || IDT_MSG_CNT <= midx)
		return -EINVAL;

	if (pidx < 0 || ndev->peer_cnt <= pidx)
		return -EINVAL;

	/* Collect the routing information */
	swpmsgctl = FUNC0(SWPxMSGCTL_REG, 0, midx) |
		    FUNC0(SWPxMSGCTL_PART, 0, ndev->peers[pidx].part);

	/* Lock the messages routing table of the specified register */
	FUNC3(&ndev->msg_locks[midx], irqflags);
	/* Set the route and send the data */
	FUNC2(ndev, partdata_tbl[ndev->part].msgctl[midx], swpmsgctl);
	FUNC1(ndev, ntdata_tbl.msgs[midx].out, msg);
	/* Unlock the messages routing table */
	FUNC4(&ndev->msg_locks[midx], irqflags);

	/* Client driver shall check the status register */
	return 0;
}