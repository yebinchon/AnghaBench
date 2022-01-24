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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_target {int hci_reader_gate; } ;
struct nfc_hci_dev {int dummy; } ;
struct microread_info {void* async_cb_context; int /*<<< orphan*/  async_cb; int /*<<< orphan*/  async_cb_type; } ;
typedef  int /*<<< orphan*/  data_exchange_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  MICROREAD_CB_TYPE_READER_ALL ; 
 int /*<<< orphan*/  MICROREAD_CMD_MREAD_EXCHANGE ; 
 int /*<<< orphan*/  MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF ; 
#define  MICROREAD_GATE_ID_MREAD_ISO_A 132 
#define  MICROREAD_GATE_ID_MREAD_ISO_A_3 131 
#define  MICROREAD_GATE_ID_MREAD_ISO_B 130 
#define  MICROREAD_GATE_ID_MREAD_NFC_T1 129 
#define  MICROREAD_GATE_ID_MREAD_NFC_T3 128 
 int MICROREAD_GATE_ID_P2P_INITIATOR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  microread_im_transceive_cb ; 
 struct microread_info* FUNC1 (struct nfc_hci_dev*) ; 
 int FUNC2 (struct nfc_hci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct microread_info*) ; 
 int FUNC3 (struct nfc_hci_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct nfc_hci_dev *hdev,
				   struct nfc_target *target,
				   struct sk_buff *skb, data_exchange_cb_t cb,
				   void *cb_context)
{
	struct microread_info *info = FUNC1(hdev);
	u8 control_bits;
	u16 crc;

	FUNC4("data exchange to gate 0x%x\n", target->hci_reader_gate);

	if (target->hci_reader_gate == MICROREAD_GATE_ID_P2P_INITIATOR) {
		*(u8 *)FUNC5(skb, 1) = 0;

		return FUNC3(hdev, target->hci_reader_gate,
				     MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF,
				     skb->data, skb->len);
	}

	switch (target->hci_reader_gate) {
	case MICROREAD_GATE_ID_MREAD_ISO_A:
		control_bits = 0xCB;
		break;
	case MICROREAD_GATE_ID_MREAD_ISO_A_3:
		control_bits = 0xCB;
		break;
	case MICROREAD_GATE_ID_MREAD_ISO_B:
		control_bits = 0xCB;
		break;
	case MICROREAD_GATE_ID_MREAD_NFC_T1:
		control_bits = 0x1B;

		crc = FUNC0(0xffff, skb->data, skb->len);
		crc = ~crc;
		FUNC6(skb, crc & 0xff);
		FUNC6(skb, crc >> 8);
		break;
	case MICROREAD_GATE_ID_MREAD_NFC_T3:
		control_bits = 0xDB;
		break;
	default:
		FUNC4("Abort im_transceive to invalid gate 0x%x\n",
			target->hci_reader_gate);
		return 1;
	}

	*(u8 *)FUNC5(skb, 1) = control_bits;

	info->async_cb_type = MICROREAD_CB_TYPE_READER_ALL;
	info->async_cb = cb;
	info->async_cb_context = cb_context;

	return FUNC2(hdev, target->hci_reader_gate,
				      MICROREAD_CMD_MREAD_EXCHANGE,
				      skb->data, skb->len,
				      microread_im_transceive_cb, info);
}