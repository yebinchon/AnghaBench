
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct st21nfca_dep_req_res {int pfb; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int ndev; } ;


 int EIO ;
 scalar_t__ ST21NFCA_NFC_DEP_DID_BIT_SET (int ) ;
 scalar_t__ ST21NFCA_NFC_DEP_NAD_BIT_SET (int ) ;


 int ST21NFCA_NFC_DEP_PFB_PNI (int ) ;

 int ST21NFCA_NFC_DEP_PFB_TYPE (int ) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_tm_data_received (int ,struct sk_buff*) ;
 int pr_err (char*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int st21nfca_tm_recv_dep_req(struct nfc_hci_dev *hdev,
        struct sk_buff *skb)
{
 struct st21nfca_dep_req_res *dep_req;
 u8 size;
 int r;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 skb_trim(skb, skb->len - 1);

 size = 4;

 dep_req = (struct st21nfca_dep_req_res *)skb->data;
 if (skb->len < size) {
  r = -EIO;
  goto exit;
 }

 if (ST21NFCA_NFC_DEP_DID_BIT_SET(dep_req->pfb))
  size++;
 if (ST21NFCA_NFC_DEP_NAD_BIT_SET(dep_req->pfb))
  size++;

 if (skb->len < size) {
  r = -EIO;
  goto exit;
 }


 switch (ST21NFCA_NFC_DEP_PFB_TYPE(dep_req->pfb)) {
 case 129:
  info->dep_info.curr_nfc_dep_pni =
    ST21NFCA_NFC_DEP_PFB_PNI(dep_req->pfb);
  break;
 case 130:
  pr_err("Received a ACK/NACK PDU\n");
  break;
 case 128:
  pr_err("Received a SUPERVISOR PDU\n");
  break;
 }

 skb_pull(skb, size);

 return nfc_tm_data_received(hdev->ndev, skb);
exit:
 return r;
}
