
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int to; int curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {int async_cb_type; TYPE_2__ dep_info; TYPE_1__* hdev; } ;
struct st21nfca_dep_req_res {int pfb; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_3__ {int ndev; } ;



 int ST21NFCA_NFCIP1_DEP_REQ ;
 int ST21NFCA_NFCIP1_REQ ;
 int ST21NFCA_NFC_DEP_DID_BIT_SET (int ) ;
 int ST21NFCA_NFC_DEP_NAD_BIT_SET (int ) ;


 int ST21NFCA_NFC_DEP_PFB_PNI (int ) ;

 int ST21NFCA_NFC_DEP_PFB_TYPE (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_tm_data_received (int ,struct sk_buff*) ;
 int pr_err (char*) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int ) ;
 int st21nfca_im_send_pdu (struct st21nfca_hci_info*,struct sk_buff*) ;

__attribute__((used)) static void st21nfca_im_recv_dep_res_cb(void *context, struct sk_buff *skb,
     int err)
{
 struct st21nfca_hci_info *info = context;
 struct st21nfca_dep_req_res *dep_res;

 int size;

 if (err != 0)
  return;

 if (!skb)
  return;

 switch (info->async_cb_type) {
 case 131:
  dep_res = (struct st21nfca_dep_req_res *)skb->data;

  size = 3;
  if (skb->len < size)
   goto exit;

  if (ST21NFCA_NFC_DEP_DID_BIT_SET(dep_res->pfb))
   size++;
  if (ST21NFCA_NFC_DEP_NAD_BIT_SET(dep_res->pfb))
   size++;

  if (skb->len < size)
   goto exit;

  skb_trim(skb, skb->len - 1);


  switch (ST21NFCA_NFC_DEP_PFB_TYPE(dep_res->pfb)) {
  case 130:
   pr_err("Received a ACK/NACK PDU\n");

  case 129:
   info->dep_info.curr_nfc_dep_pni =
       ST21NFCA_NFC_DEP_PFB_PNI(dep_res->pfb + 1);
   size++;
   skb_pull(skb, size);
   nfc_tm_data_received(info->hdev->ndev, skb);
   break;
  case 128:
   pr_err("Received a SUPERVISOR PDU\n");
   skb_pull(skb, size);
   *(u8 *)skb_push(skb, 1) = ST21NFCA_NFCIP1_DEP_REQ;
   *(u8 *)skb_push(skb, 1) = ST21NFCA_NFCIP1_REQ;
   *(u8 *)skb_push(skb, 1) = skb->len;
   *(u8 *)skb_push(skb, 1) = info->dep_info.to | 0x10;

   st21nfca_im_send_pdu(info, skb);
   break;
  }

  return;
 default:
  break;
 }

exit:
 kfree_skb(skb);
}
