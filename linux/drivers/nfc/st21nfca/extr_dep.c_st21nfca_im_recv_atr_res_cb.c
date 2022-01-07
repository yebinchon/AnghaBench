
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int to; int lri; int curr_nfc_dep_pni; int idx; } ;
struct st21nfca_hci_info {int async_cb_type; TYPE_2__* hdev; TYPE_1__ dep_info; } ;
struct st21nfca_atr_res {int to; int ppi; int bri; int bsi; int did; int gbi; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_4__ {int ndev; } ;


 int NFC_COMM_PASSIVE ;
 int NFC_RF_INITIATOR ;

 int ST21NFCA_PP2LRI (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nfc_dep_link_is_up (int ,int ,int ,int ) ;
 int nfc_set_remote_general_bytes (int ,int ,int ) ;
 int skb_trim (struct sk_buff*,int ) ;
 int st21nfca_im_send_psl_req (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void st21nfca_im_recv_atr_res_cb(void *context, struct sk_buff *skb,
     int err)
{
 struct st21nfca_hci_info *info = context;
 struct st21nfca_atr_res *atr_res;
 int r;

 if (err != 0)
  return;

 if (!skb)
  return;

 switch (info->async_cb_type) {
 case 128:
  skb_trim(skb, skb->len - 1);
  atr_res = (struct st21nfca_atr_res *)skb->data;
  r = nfc_set_remote_general_bytes(info->hdev->ndev,
    atr_res->gbi,
    skb->len - sizeof(struct st21nfca_atr_res));
  if (r < 0)
   return;

  if (atr_res->to >= 0x0e)
   info->dep_info.to = 0x0e;
  else
   info->dep_info.to = atr_res->to + 1;

  info->dep_info.to |= 0x10;

  r = nfc_dep_link_is_up(info->hdev->ndev, info->dep_info.idx,
     NFC_COMM_PASSIVE, NFC_RF_INITIATOR);
  if (r < 0)
   return;

  info->dep_info.curr_nfc_dep_pni = 0;
  if (ST21NFCA_PP2LRI(atr_res->ppi) != info->dep_info.lri)
   st21nfca_im_send_psl_req(info->hdev, atr_res->did,
      atr_res->bsi, atr_res->bri,
      ST21NFCA_PP2LRI(atr_res->ppi));
  break;
 default:
  kfree_skb(skb);
  break;
 }
}
