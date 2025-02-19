
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st21nfca_psl_req {int length; int did; int brs; int fsl; int cmd1; int cmd0; } ;
struct TYPE_2__ {int to; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;


 int GFP_KERNEL ;
 int ST21NFCA_NFCIP1_PSL_REQ ;
 int ST21NFCA_NFCIP1_REQ ;
 struct sk_buff* alloc_skb (int,int ) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int st21nfca_im_send_pdu (struct st21nfca_hci_info*,struct sk_buff*) ;

__attribute__((used)) static void st21nfca_im_send_psl_req(struct nfc_hci_dev *hdev, u8 did, u8 bsi,
         u8 bri, u8 lri)
{
 struct sk_buff *skb;
 struct st21nfca_psl_req *psl_req;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 skb =
     alloc_skb(sizeof(struct st21nfca_psl_req) + 1, GFP_KERNEL);
 if (!skb)
  return;
 skb_reserve(skb, 1);

 skb_put(skb, sizeof(struct st21nfca_psl_req));
 psl_req = (struct st21nfca_psl_req *) skb->data;

 psl_req->length = sizeof(struct st21nfca_psl_req);
 psl_req->cmd0 = ST21NFCA_NFCIP1_REQ;
 psl_req->cmd1 = ST21NFCA_NFCIP1_PSL_REQ;
 psl_req->did = did;
 psl_req->brs = (0x30 & bsi << 4) | (bri & 0x03);
 psl_req->fsl = lri;

 *(u8 *)skb_push(skb, 1) = info->dep_info.to | 0x10;

 st21nfca_im_send_pdu(info, skb);
}
