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
typedef  int u8 ;
struct TYPE_2__ {int curr_nfc_dep_pni; int to; } ;
struct st21nfca_hci_info {int /*<<< orphan*/  async_cb; TYPE_1__ dep_info; struct st21nfca_hci_info* async_cb_context; int /*<<< orphan*/  async_cb_type; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST21NFCA_CB_TYPE_READER_F ; 
 int ST21NFCA_NFCIP1_DEP_REQ ; 
 int ST21NFCA_NFCIP1_REQ ; 
 int /*<<< orphan*/  ST21NFCA_RF_READER_F_GATE ; 
 int /*<<< orphan*/  ST21NFCA_WR_XCHG_DATA ; 
 struct st21nfca_hci_info* FUNC0 (struct nfc_hci_dev*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct st21nfca_hci_info*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  st21nfca_im_recv_dep_res_cb ; 

int FUNC3(struct nfc_hci_dev *hdev, struct sk_buff *skb)
{
	struct st21nfca_hci_info *info = FUNC0(hdev);

	info->async_cb_type = ST21NFCA_CB_TYPE_READER_F;
	info->async_cb_context = info;
	info->async_cb = st21nfca_im_recv_dep_res_cb;

	*(u8 *)FUNC2(skb, 1) = info->dep_info.curr_nfc_dep_pni;
	*(u8 *)FUNC2(skb, 1) = ST21NFCA_NFCIP1_DEP_REQ;
	*(u8 *)FUNC2(skb, 1) = ST21NFCA_NFCIP1_REQ;
	*(u8 *)FUNC2(skb, 1) = skb->len;

	*(u8 *)FUNC2(skb, 1) = info->dep_info.to | 0x10;

	return FUNC1(hdev, ST21NFCA_RF_READER_F_GATE,
				      ST21NFCA_WR_XCHG_DATA,
				      skb->data, skb->len,
				      info->async_cb, info);
}