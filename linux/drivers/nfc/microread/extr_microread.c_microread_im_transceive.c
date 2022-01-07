
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int data; } ;
struct nfc_target {int hci_reader_gate; } ;
struct nfc_hci_dev {int dummy; } ;
struct microread_info {void* async_cb_context; int async_cb; int async_cb_type; } ;
typedef int data_exchange_cb_t ;


 int MICROREAD_CB_TYPE_READER_ALL ;
 int MICROREAD_CMD_MREAD_EXCHANGE ;
 int MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF ;





 int MICROREAD_GATE_ID_P2P_INITIATOR ;
 int crc_ccitt (int,int ,int ) ;
 int microread_im_transceive_cb ;
 struct microread_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_cmd_async (struct nfc_hci_dev*,int,int ,int ,int ,int ,struct microread_info*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int,int ,int ,int ) ;
 int pr_info (char*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_u8 (struct sk_buff*,int) ;

__attribute__((used)) static int microread_im_transceive(struct nfc_hci_dev *hdev,
       struct nfc_target *target,
       struct sk_buff *skb, data_exchange_cb_t cb,
       void *cb_context)
{
 struct microread_info *info = nfc_hci_get_clientdata(hdev);
 u8 control_bits;
 u16 crc;

 pr_info("data exchange to gate 0x%x\n", target->hci_reader_gate);

 if (target->hci_reader_gate == MICROREAD_GATE_ID_P2P_INITIATOR) {
  *(u8 *)skb_push(skb, 1) = 0;

  return nfc_hci_send_event(hdev, target->hci_reader_gate,
         MICROREAD_EVT_P2P_INITIATOR_EXCHANGE_TO_RF,
         skb->data, skb->len);
 }

 switch (target->hci_reader_gate) {
 case 132:
  control_bits = 0xCB;
  break;
 case 131:
  control_bits = 0xCB;
  break;
 case 130:
  control_bits = 0xCB;
  break;
 case 129:
  control_bits = 0x1B;

  crc = crc_ccitt(0xffff, skb->data, skb->len);
  crc = ~crc;
  skb_put_u8(skb, crc & 0xff);
  skb_put_u8(skb, crc >> 8);
  break;
 case 128:
  control_bits = 0xDB;
  break;
 default:
  pr_info("Abort im_transceive to invalid gate 0x%x\n",
   target->hci_reader_gate);
  return 1;
 }

 *(u8 *)skb_push(skb, 1) = control_bits;

 info->async_cb_type = MICROREAD_CB_TYPE_READER_ALL;
 info->async_cb = cb;
 info->async_cb_context = cb_context;

 return nfc_hci_send_cmd_async(hdev, target->hci_reader_gate,
          MICROREAD_CMD_MREAD_EXCHANGE,
          skb->data, skb->len,
          microread_im_transceive_cb, info);
}
