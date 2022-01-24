#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct qedi_uio_dev {int /*<<< orphan*/  tx_pkt; scalar_t__ uctrl; } ;
struct qedi_uio_ctrl {int host_tx_pkt_len; int /*<<< orphan*/  hw_tx_cons; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; struct qedi_uio_dev* udev; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ll2; } ;
struct TYPE_3__ {int (* start_xmit ) (struct qed_dev*,struct sk_buff*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* qedi_ops ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (struct qed_dev*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct qedi_ctx *qedi, u16 vlanid)
{
	struct qed_dev *cdev = qedi->cdev;
	struct qedi_uio_dev *udev;
	struct qedi_uio_ctrl *uctrl;
	struct sk_buff *skb;
	u32 len;
	int rc = 0;

	udev = qedi->udev;
	if (!udev) {
		FUNC0(&qedi->dbg_ctx, "udev is NULL.\n");
		return -EINVAL;
	}

	uctrl = (struct qedi_uio_ctrl *)udev->uctrl;
	if (!uctrl) {
		FUNC0(&qedi->dbg_ctx, "uctlr is NULL.\n");
		return -EINVAL;
	}

	len = uctrl->host_tx_pkt_len;
	if (!len) {
		FUNC0(&qedi->dbg_ctx, "Invalid len %u\n", len);
		return -EINVAL;
	}

	skb = FUNC2(len, GFP_ATOMIC);
	if (!skb) {
		FUNC0(&qedi->dbg_ctx, "alloc_skb failed\n");
		return -EINVAL;
	}

	FUNC6(skb, len);
	FUNC5(skb->data, udev->tx_pkt, len);
	skb->ip_summed = CHECKSUM_NONE;

	if (vlanid)
		FUNC1(skb, FUNC3(ETH_P_8021Q), vlanid);

	rc = qedi_ops->ll2->start_xmit(cdev, skb, 0);
	if (rc) {
		FUNC0(&qedi->dbg_ctx, "ll2 start_xmit returned %d\n",
			 rc);
		FUNC4(skb);
	}

	uctrl->host_tx_pkt_len = 0;
	uctrl->hw_tx_cons++;

	return rc;
}