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
struct st21nfca_psl_req {int length; int did; int brs; int fsl; int /*<<< orphan*/  cmd1; int /*<<< orphan*/  cmd0; } ;
struct TYPE_2__ {int to; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ST21NFCA_NFCIP1_PSL_REQ ; 
 int /*<<< orphan*/  ST21NFCA_NFCIP1_REQ ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct st21nfca_hci_info* FUNC1 (struct nfc_hci_dev*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct st21nfca_hci_info*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct nfc_hci_dev *hdev, u8 did, u8 bsi,
				     u8 bri, u8 lri)
{
	struct sk_buff *skb;
	struct st21nfca_psl_req *psl_req;
	struct st21nfca_hci_info *info = FUNC1(hdev);

	skb =
	    FUNC0(sizeof(struct st21nfca_psl_req) + 1, GFP_KERNEL);
	if (!skb)
		return;
	FUNC4(skb, 1);

	FUNC3(skb, sizeof(struct st21nfca_psl_req));
	psl_req = (struct st21nfca_psl_req *) skb->data;

	psl_req->length = sizeof(struct st21nfca_psl_req);
	psl_req->cmd0 = ST21NFCA_NFCIP1_REQ;
	psl_req->cmd1 = ST21NFCA_NFCIP1_PSL_REQ;
	psl_req->did = did;
	psl_req->brs = (0x30 & bsi << 4) | (bri & 0x03);
	psl_req->fsl = lri;

	*(u8 *)FUNC2(skb, 1) = info->dep_info.to | 0x10;

	FUNC5(info, skb);
}