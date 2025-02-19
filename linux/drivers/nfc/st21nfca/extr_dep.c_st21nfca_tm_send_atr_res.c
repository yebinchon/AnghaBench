
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ curr_nfc_dep_pni; } ;
struct st21nfca_hci_info {TYPE_1__ dep_info; } ;
struct st21nfca_atr_res {int length; int bsi; int bri; int gbi; int ppi; int to; int nfcid3; int cmd1; int cmd0; } ;
struct st21nfca_atr_req {int length; int gbi; int nfcid3; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_hci_dev {int ndev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ST21NFCA_DEFAULT_TIMEOUT ;
 int ST21NFCA_EVT_SEND_DATA ;
 int ST21NFCA_GB_BIT ;
 int ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B ;
 int ST21NFCA_NFCIP1_ATR_RES ;
 int ST21NFCA_NFCIP1_RES ;
 int ST21NFCA_RF_CARD_F_GATE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,size_t) ;
 int memset (struct st21nfca_atr_res*,int ,int) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,scalar_t__,int ) ;
 int nfc_set_remote_general_bytes (int ,int ,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;

__attribute__((used)) static int st21nfca_tm_send_atr_res(struct nfc_hci_dev *hdev,
        struct st21nfca_atr_req *atr_req)
{
 struct st21nfca_atr_res *atr_res;
 struct sk_buff *skb;
 size_t gb_len;
 int r;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);

 gb_len = atr_req->length - sizeof(struct st21nfca_atr_req);
 skb = alloc_skb(atr_req->length + 1, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, sizeof(struct st21nfca_atr_res));

 atr_res = (struct st21nfca_atr_res *)skb->data;
 memset(atr_res, 0, sizeof(struct st21nfca_atr_res));

 atr_res->length = atr_req->length + 1;
 atr_res->cmd0 = ST21NFCA_NFCIP1_RES;
 atr_res->cmd1 = ST21NFCA_NFCIP1_ATR_RES;

 memcpy(atr_res->nfcid3, atr_req->nfcid3, 6);
 atr_res->bsi = 0x00;
 atr_res->bri = 0x00;
 atr_res->to = ST21NFCA_DEFAULT_TIMEOUT;
 atr_res->ppi = ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B;

 if (gb_len) {
  skb_put(skb, gb_len);

  atr_res->ppi |= ST21NFCA_GB_BIT;
  memcpy(atr_res->gbi, atr_req->gbi, gb_len);
  r = nfc_set_remote_general_bytes(hdev->ndev, atr_res->gbi,
        gb_len);
  if (r < 0)
   return r;
 }

 info->dep_info.curr_nfc_dep_pni = 0;

 r = nfc_hci_send_event(hdev, ST21NFCA_RF_CARD_F_GATE,
    ST21NFCA_EVT_SEND_DATA, skb->data, skb->len);
 kfree_skb(skb);
 return r;
}
