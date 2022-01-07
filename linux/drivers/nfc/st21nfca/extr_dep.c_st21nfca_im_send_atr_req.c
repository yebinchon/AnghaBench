
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u8 ;
struct TYPE_4__ {int to; int bri; int bsi; int lri; } ;
struct st21nfca_hci_info {int async_cb; TYPE_2__ dep_info; struct st21nfca_hci_info* async_cb_context; int async_cb_type; } ;
struct st21nfca_atr_req {int did; int bsi; int bri; int ppi; scalar_t__ length; struct st21nfca_atr_req* nfcid3; int cmd1; int cmd0; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {scalar_t__ sensf_res_len; int sensf_res; } ;
struct nfc_hci_dev {scalar_t__ gb_len; TYPE_1__* ndev; } ;
struct TYPE_3__ {struct nfc_target* targets; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFC_NFCID3_MAXSIZE ;
 int PROTOCOL_ERR (char*) ;
 scalar_t__ ST21NFCA_ATR_REQ_MAX_SIZE ;
 scalar_t__ ST21NFCA_ATR_REQ_MIN_SIZE ;
 int ST21NFCA_CB_TYPE_READER_F ;
 int ST21NFCA_DEFAULT_TIMEOUT ;
 int ST21NFCA_GB_BIT ;
 int ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B ;
 int ST21NFCA_NFCIP1_ATR_REQ ;
 int ST21NFCA_NFCIP1_REQ ;
 int ST21NFCA_PP2LRI (int ) ;
 int ST21NFCA_RF_READER_F_GATE ;
 int ST21NFCA_WR_XCHG_DATA ;
 struct sk_buff* alloc_skb (int,int ) ;
 int get_random_bytes (struct st21nfca_atr_req*,int) ;
 int memcpy (struct st21nfca_atr_req*,int ,scalar_t__) ;
 int memset (struct st21nfca_atr_req*,int ,int) ;
 struct st21nfca_hci_info* nfc_hci_get_clientdata (struct nfc_hci_dev*) ;
 int nfc_hci_send_cmd_async (struct nfc_hci_dev*,int ,int ,scalar_t__,int ,int ,struct st21nfca_hci_info*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int st21nfca_im_recv_atr_res_cb ;

int st21nfca_im_send_atr_req(struct nfc_hci_dev *hdev, u8 *gb, size_t gb_len)
{
 struct sk_buff *skb;
 struct st21nfca_hci_info *info = nfc_hci_get_clientdata(hdev);
 struct st21nfca_atr_req *atr_req;
 struct nfc_target *target;
 uint size;

 info->dep_info.to = ST21NFCA_DEFAULT_TIMEOUT;
 size = ST21NFCA_ATR_REQ_MIN_SIZE + gb_len;
 if (size > ST21NFCA_ATR_REQ_MAX_SIZE) {
  PROTOCOL_ERR("14.6.1.1");
  return -EINVAL;
 }

 skb =
     alloc_skb(sizeof(struct st21nfca_atr_req) + gb_len + 1, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, 1);

 skb_put(skb, sizeof(struct st21nfca_atr_req));

 atr_req = (struct st21nfca_atr_req *)skb->data;
 memset(atr_req, 0, sizeof(struct st21nfca_atr_req));

 atr_req->cmd0 = ST21NFCA_NFCIP1_REQ;
 atr_req->cmd1 = ST21NFCA_NFCIP1_ATR_REQ;
 memset(atr_req->nfcid3, 0, NFC_NFCID3_MAXSIZE);
 target = hdev->ndev->targets;

 if (target->sensf_res_len > 0)
  memcpy(atr_req->nfcid3, target->sensf_res,
    target->sensf_res_len);
 else
  get_random_bytes(atr_req->nfcid3, NFC_NFCID3_MAXSIZE);

 atr_req->did = 0x0;

 atr_req->bsi = 0x00;
 atr_req->bri = 0x00;
 atr_req->ppi = ST21NFCA_LR_BITS_PAYLOAD_SIZE_254B;
 if (gb_len) {
  atr_req->ppi |= ST21NFCA_GB_BIT;
  skb_put_data(skb, gb, gb_len);
 }
 atr_req->length = sizeof(struct st21nfca_atr_req) + hdev->gb_len;

 *(u8 *)skb_push(skb, 1) = info->dep_info.to | 0x10;

 info->async_cb_type = ST21NFCA_CB_TYPE_READER_F;
 info->async_cb_context = info;
 info->async_cb = st21nfca_im_recv_atr_res_cb;
 info->dep_info.bri = atr_req->bri;
 info->dep_info.bsi = atr_req->bsi;
 info->dep_info.lri = ST21NFCA_PP2LRI(atr_req->ppi);

 return nfc_hci_send_cmd_async(hdev, ST21NFCA_RF_READER_F_GATE,
    ST21NFCA_WR_XCHG_DATA, skb->data,
    skb->len, info->async_cb, info);
}
