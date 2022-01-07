
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st21nfca_psl_res {int length; int did; int cmd1; int cmd0; } ;
struct st21nfca_psl_req {int brs; int did; } ;
struct sk_buff {int len; int * data; } ;
struct nfc_hci_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ST21NFCA_CARD_BITRATE_424 ;
 int ST21NFCA_EVT_CARD_F_BITRATE ;
 int ST21NFCA_EVT_SEND_DATA ;
 int ST21NFCA_NFCIP1_PSL_RES ;
 int ST21NFCA_NFCIP1_RES ;
 scalar_t__ ST21NFCA_PSL_REQ_RECV_SPEED (int ) ;
 scalar_t__ ST21NFCA_PSL_REQ_SEND_SPEED (int ) ;
 int ST21NFCA_RF_CARD_F_GATE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int st21nfca_tm_send_psl_res(struct nfc_hci_dev *hdev,
        struct st21nfca_psl_req *psl_req)
{
 struct st21nfca_psl_res *psl_res;
 struct sk_buff *skb;
 u8 bitrate[2] = {0, 0};
 int r;

 skb = alloc_skb(sizeof(struct st21nfca_psl_res), GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 skb_put(skb, sizeof(struct st21nfca_psl_res));

 psl_res = (struct st21nfca_psl_res *)skb->data;

 psl_res->length = sizeof(struct st21nfca_psl_res);
 psl_res->cmd0 = ST21NFCA_NFCIP1_RES;
 psl_res->cmd1 = ST21NFCA_NFCIP1_PSL_RES;
 psl_res->did = psl_req->did;

 r = nfc_hci_send_event(hdev, ST21NFCA_RF_CARD_F_GATE,
    ST21NFCA_EVT_SEND_DATA, skb->data, skb->len);
 if (r < 0)
  goto error;
 if (ST21NFCA_PSL_REQ_SEND_SPEED(psl_req->brs) &&
     ST21NFCA_PSL_REQ_RECV_SPEED(psl_req->brs)) {
  bitrate[0] = ST21NFCA_CARD_BITRATE_424;
  bitrate[1] = ST21NFCA_CARD_BITRATE_424;
 }


 r = nfc_hci_send_event(hdev, ST21NFCA_RF_CARD_F_GATE,
   ST21NFCA_EVT_CARD_F_BITRATE, bitrate, 2);
error:
 kfree_skb(skb);
 return r;
}
