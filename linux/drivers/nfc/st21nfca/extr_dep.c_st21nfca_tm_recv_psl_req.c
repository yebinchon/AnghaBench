
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st21nfca_psl_req {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int dummy; } ;


 int EIO ;
 int skb_trim (struct sk_buff*,int) ;
 int st21nfca_tm_send_psl_res (struct nfc_hci_dev*,struct st21nfca_psl_req*) ;

__attribute__((used)) static int st21nfca_tm_recv_psl_req(struct nfc_hci_dev *hdev,
        struct sk_buff *skb)
{
 struct st21nfca_psl_req *psl_req;
 int r;

 skb_trim(skb, skb->len - 1);

 if (!skb->len) {
  r = -EIO;
  goto exit;
 }

 psl_req = (struct st21nfca_psl_req *)skb->data;

 if (skb->len < sizeof(struct st21nfca_psl_req)) {
  r = -EIO;
  goto exit;
 }

 r = st21nfca_tm_send_psl_res(hdev, psl_req);
exit:
 return r;
}
