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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int* data; } ;
struct nfc_target {int hci_reader_gate; int sel_res; int nfcid1_len; int /*<<< orphan*/  nfcid1; void* supported_protocols; void* sens_res; } ;
struct nfc_hci_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MICROREAD_EMCF_A3_ATQA ; 
 size_t MICROREAD_EMCF_A3_LEN ; 
 size_t MICROREAD_EMCF_A3_SAK ; 
 size_t MICROREAD_EMCF_A3_UID ; 
 size_t MICROREAD_EMCF_A_ATQA ; 
 size_t MICROREAD_EMCF_A_LEN ; 
 size_t MICROREAD_EMCF_A_SAK ; 
 size_t MICROREAD_EMCF_A_UID ; 
 size_t MICROREAD_EMCF_B_UID ; 
 size_t MICROREAD_EMCF_T1_ATQA ; 
 size_t MICROREAD_EMCF_T1_UID ; 
 size_t MICROREAD_EMCF_T3_UID ; 
#define  MICROREAD_GATE_ID_MREAD_ISO_A 132 
#define  MICROREAD_GATE_ID_MREAD_ISO_A_3 131 
#define  MICROREAD_GATE_ID_MREAD_ISO_B 130 
#define  MICROREAD_GATE_ID_MREAD_NFC_T1 129 
#define  MICROREAD_GATE_ID_MREAD_NFC_T3 128 
 void* NFC_PROTO_FELICA_MASK ; 
 void* NFC_PROTO_ISO14443_B_MASK ; 
 void* NFC_PROTO_JEWEL_MASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct nfc_target* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 void* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct nfc_target*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static void FUNC10(struct nfc_hci_dev *hdev, u8 gate,
					struct sk_buff *skb)
{
	struct nfc_target *targets;
	int r = 0;

	FUNC9("target discovered to gate 0x%x\n", gate);

	targets = FUNC3(sizeof(struct nfc_target), GFP_KERNEL);
	if (targets == NULL) {
		r = -ENOMEM;
		goto exit;
	}

	targets->hci_reader_gate = gate;

	switch (gate) {
	case MICROREAD_GATE_ID_MREAD_ISO_A:
		targets->supported_protocols =
		      FUNC6(skb->data[MICROREAD_EMCF_A_SAK]);
		targets->sens_res =
			 FUNC0(*(u16 *)&skb->data[MICROREAD_EMCF_A_ATQA]);
		targets->sel_res = skb->data[MICROREAD_EMCF_A_SAK];
		targets->nfcid1_len = skb->data[MICROREAD_EMCF_A_LEN];
		if (targets->nfcid1_len > sizeof(targets->nfcid1)) {
			r = -EINVAL;
			goto exit_free;
		}
		FUNC5(targets->nfcid1, &skb->data[MICROREAD_EMCF_A_UID],
		       targets->nfcid1_len);
		break;
	case MICROREAD_GATE_ID_MREAD_ISO_A_3:
		targets->supported_protocols =
		      FUNC6(skb->data[MICROREAD_EMCF_A3_SAK]);
		targets->sens_res =
			 FUNC0(*(u16 *)&skb->data[MICROREAD_EMCF_A3_ATQA]);
		targets->sel_res = skb->data[MICROREAD_EMCF_A3_SAK];
		targets->nfcid1_len = skb->data[MICROREAD_EMCF_A3_LEN];
		if (targets->nfcid1_len > sizeof(targets->nfcid1)) {
			r = -EINVAL;
			goto exit_free;
		}
		FUNC5(targets->nfcid1, &skb->data[MICROREAD_EMCF_A3_UID],
		       targets->nfcid1_len);
		break;
	case MICROREAD_GATE_ID_MREAD_ISO_B:
		targets->supported_protocols = NFC_PROTO_ISO14443_B_MASK;
		FUNC5(targets->nfcid1, &skb->data[MICROREAD_EMCF_B_UID], 4);
		targets->nfcid1_len = 4;
		break;
	case MICROREAD_GATE_ID_MREAD_NFC_T1:
		targets->supported_protocols = NFC_PROTO_JEWEL_MASK;
		targets->sens_res =
			FUNC4(*(u16 *)&skb->data[MICROREAD_EMCF_T1_ATQA]);
		FUNC5(targets->nfcid1, &skb->data[MICROREAD_EMCF_T1_UID], 4);
		targets->nfcid1_len = 4;
		break;
	case MICROREAD_GATE_ID_MREAD_NFC_T3:
		targets->supported_protocols = NFC_PROTO_FELICA_MASK;
		FUNC5(targets->nfcid1, &skb->data[MICROREAD_EMCF_T3_UID], 8);
		targets->nfcid1_len = 8;
		break;
	default:
		FUNC9("discard target discovered to gate 0x%x\n", gate);
		goto exit_free;
	}

	r = FUNC7(hdev->ndev, targets, 1);

exit_free:
	FUNC1(targets);

exit:
	FUNC2(skb);

	if (r)
		FUNC8("Failed to handle discovered target err=%d\n", r);
}