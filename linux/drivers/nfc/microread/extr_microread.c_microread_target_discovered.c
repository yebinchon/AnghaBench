
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int* data; } ;
struct nfc_target {int hci_reader_gate; int sel_res; int nfcid1_len; int nfcid1; void* supported_protocols; void* sens_res; } ;
struct nfc_hci_dev {int ndev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
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





 void* NFC_PROTO_FELICA_MASK ;
 void* NFC_PROTO_ISO14443_B_MASK ;
 void* NFC_PROTO_JEWEL_MASK ;
 void* be16_to_cpu (int ) ;
 int kfree (struct nfc_target*) ;
 int kfree_skb (struct sk_buff*) ;
 struct nfc_target* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int ,int*,int) ;
 void* nfc_hci_sak_to_protocol (int) ;
 int nfc_targets_found (int ,struct nfc_target*,int) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void microread_target_discovered(struct nfc_hci_dev *hdev, u8 gate,
     struct sk_buff *skb)
{
 struct nfc_target *targets;
 int r = 0;

 pr_info("target discovered to gate 0x%x\n", gate);

 targets = kzalloc(sizeof(struct nfc_target), GFP_KERNEL);
 if (targets == ((void*)0)) {
  r = -ENOMEM;
  goto exit;
 }

 targets->hci_reader_gate = gate;

 switch (gate) {
 case 132:
  targets->supported_protocols =
        nfc_hci_sak_to_protocol(skb->data[MICROREAD_EMCF_A_SAK]);
  targets->sens_res =
    be16_to_cpu(*(u16 *)&skb->data[MICROREAD_EMCF_A_ATQA]);
  targets->sel_res = skb->data[MICROREAD_EMCF_A_SAK];
  targets->nfcid1_len = skb->data[MICROREAD_EMCF_A_LEN];
  if (targets->nfcid1_len > sizeof(targets->nfcid1)) {
   r = -EINVAL;
   goto exit_free;
  }
  memcpy(targets->nfcid1, &skb->data[MICROREAD_EMCF_A_UID],
         targets->nfcid1_len);
  break;
 case 131:
  targets->supported_protocols =
        nfc_hci_sak_to_protocol(skb->data[MICROREAD_EMCF_A3_SAK]);
  targets->sens_res =
    be16_to_cpu(*(u16 *)&skb->data[MICROREAD_EMCF_A3_ATQA]);
  targets->sel_res = skb->data[MICROREAD_EMCF_A3_SAK];
  targets->nfcid1_len = skb->data[MICROREAD_EMCF_A3_LEN];
  if (targets->nfcid1_len > sizeof(targets->nfcid1)) {
   r = -EINVAL;
   goto exit_free;
  }
  memcpy(targets->nfcid1, &skb->data[MICROREAD_EMCF_A3_UID],
         targets->nfcid1_len);
  break;
 case 130:
  targets->supported_protocols = NFC_PROTO_ISO14443_B_MASK;
  memcpy(targets->nfcid1, &skb->data[MICROREAD_EMCF_B_UID], 4);
  targets->nfcid1_len = 4;
  break;
 case 129:
  targets->supported_protocols = NFC_PROTO_JEWEL_MASK;
  targets->sens_res =
   le16_to_cpu(*(u16 *)&skb->data[MICROREAD_EMCF_T1_ATQA]);
  memcpy(targets->nfcid1, &skb->data[MICROREAD_EMCF_T1_UID], 4);
  targets->nfcid1_len = 4;
  break;
 case 128:
  targets->supported_protocols = NFC_PROTO_FELICA_MASK;
  memcpy(targets->nfcid1, &skb->data[MICROREAD_EMCF_T3_UID], 8);
  targets->nfcid1_len = 8;
  break;
 default:
  pr_info("discard target discovered to gate 0x%x\n", gate);
  goto exit_free;
 }

 r = nfc_targets_found(hdev->ndev, targets, 1);

exit_free:
 kfree(targets);

exit:
 kfree_skb(skb);

 if (r)
  pr_err("Failed to handle discovered target err=%d\n", r);
}
