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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct skb_work_list {int /*<<< orphan*/  list; scalar_t__ vlan_id; struct sk_buff* skb; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct qedi_uio_dev {struct qedi_uio_ctrl* uctrl; } ;
struct qedi_uio_ctrl {int dummy; } ;
struct qedi_ctx {int /*<<< orphan*/  ll2_recv_thread; int /*<<< orphan*/  ll2_lock; int /*<<< orphan*/  ll2_skb_list; int /*<<< orphan*/  dbg_ctx; struct qedi_uio_dev* udev; int /*<<< orphan*/  flags; } ;
struct ethhdr {scalar_t__ h_proto; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDI_LOG_LL2 ; 
 int /*<<< orphan*/  QEDI_LOG_UIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  UIO_DEV_OPENED ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct skb_work_list* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct ethhdr*,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(void *cookie, struct sk_buff *skb, u32 arg1, u32 arg2)
{
	struct qedi_ctx *qedi = (struct qedi_ctx *)cookie;
	struct qedi_uio_dev *udev;
	struct qedi_uio_ctrl *uctrl;
	struct skb_work_list *work;
	struct ethhdr *eh;

	if (!qedi) {
		FUNC1(NULL, "qedi is NULL\n");
		return -1;
	}

	if (!FUNC16(UIO_DEV_OPENED, &qedi->flags)) {
		FUNC2(&qedi->dbg_ctx, QEDI_LOG_UIO,
			  "UIO DEV is not opened\n");
		FUNC6(skb);
		return 0;
	}

	eh = (struct ethhdr *)skb->data;
	/* Undo VLAN encapsulation */
	if (eh->h_proto == FUNC5(ETH_P_8021Q)) {
		FUNC9((u8 *)eh + VLAN_HLEN, eh, ETH_ALEN * 2);
		eh = (struct ethhdr *)FUNC10(skb, VLAN_HLEN);
		FUNC11(skb);
	}

	/* Filter out non FIP/FCoE frames here to free them faster */
	if (eh->h_proto != FUNC5(ETH_P_ARP) &&
	    eh->h_proto != FUNC5(ETH_P_IP) &&
	    eh->h_proto != FUNC5(ETH_P_IPV6)) {
		FUNC2(&qedi->dbg_ctx, QEDI_LOG_LL2,
			  "Dropping frame ethertype [0x%x] len [0x%x].\n",
			  eh->h_proto, skb->len);
		FUNC6(skb);
		return 0;
	}

	FUNC2(&qedi->dbg_ctx, QEDI_LOG_LL2,
		  "Allowed frame ethertype [0x%x] len [0x%x].\n",
		  eh->h_proto, skb->len);

	udev = qedi->udev;
	uctrl = udev->uctrl;

	work = FUNC7(sizeof(*work), GFP_ATOMIC);
	if (!work) {
		FUNC3(&qedi->dbg_ctx,
			  "Could not allocate work so dropping frame.\n");
		FUNC6(skb);
		return 0;
	}

	FUNC0(&work->list);
	work->skb = skb;

	if (FUNC13(skb))
		work->vlan_id = FUNC12(skb);

	if (work->vlan_id)
		FUNC4(work->skb, FUNC5(ETH_P_8021Q), work->vlan_id);

	FUNC14(&qedi->ll2_lock);
	FUNC8(&work->list, &qedi->ll2_skb_list);
	FUNC15(&qedi->ll2_lock);

	FUNC17(qedi->ll2_recv_thread);

	return 0;
}