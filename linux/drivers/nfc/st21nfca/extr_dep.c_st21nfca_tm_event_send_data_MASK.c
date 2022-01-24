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
typedef  int u8 ;
struct sk_buff {int* data; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
#define  ST21NFCA_NFCIP1_ATR_REQ 131 
#define  ST21NFCA_NFCIP1_DEP_REQ 130 
#define  ST21NFCA_NFCIP1_PSL_REQ 129 
#define  ST21NFCA_NFCIP1_REQ 128 
 int FUNC0 (struct nfc_hci_dev*,struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,struct sk_buff*) ; 
 int FUNC2 (struct nfc_hci_dev*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev,
				struct sk_buff *skb)
{
	u8 cmd0, cmd1;
	int r;

	cmd0 = skb->data[1];
	switch (cmd0) {
	case ST21NFCA_NFCIP1_REQ:
		cmd1 = skb->data[2];
		switch (cmd1) {
		case ST21NFCA_NFCIP1_ATR_REQ:
			r = FUNC0(hdev, skb);
			break;
		case ST21NFCA_NFCIP1_PSL_REQ:
			r = FUNC2(hdev, skb);
			break;
		case ST21NFCA_NFCIP1_DEP_REQ:
			r = FUNC1(hdev, skb);
			break;
		default:
			return 1;
		}
		break;
	default:
		return 1;
	}
	return r;
}