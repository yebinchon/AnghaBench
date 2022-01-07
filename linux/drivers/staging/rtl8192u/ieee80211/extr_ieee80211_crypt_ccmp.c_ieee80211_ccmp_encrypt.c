
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct scatterlist {int dummy; } ;
struct rtl_80211_hdr_4addr {int dummy; } ;
struct ieee80211_ccmp_data {int key_idx; int * tx_pn; int tfm; int * tx_aad; } ;
struct cb_desc {int bHwSec; } ;
struct aead_request {int dummy; } ;


 int AES_BLOCK_LEN ;
 int BIT (int) ;
 scalar_t__ CCMP_HDR_LEN ;
 size_t CCMP_MIC_LEN ;
 int CCMP_PN_LEN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 struct aead_request* aead_request_alloc (int ,int ) ;
 int aead_request_free (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,int) ;
 int aead_request_set_callback (struct aead_request*,int ,int *,int *) ;
 int aead_request_set_crypt (struct aead_request*,struct scatterlist*,struct scatterlist*,size_t,int *) ;
 int ccmp_init_iv_and_aad (struct rtl_80211_hdr_4addr*,int *,int *,int *) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int memmove (int *,int *,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,scalar_t__,size_t) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,size_t) ;
 size_t skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
{
 struct ieee80211_ccmp_data *key = priv;
 int i;
 u8 *pos;
 struct rtl_80211_hdr_4addr *hdr;
 struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);

 if (skb_headroom(skb) < CCMP_HDR_LEN ||
     skb_tailroom(skb) < CCMP_MIC_LEN ||
     skb->len < hdr_len)
  return -1;

 pos = skb_push(skb, CCMP_HDR_LEN);
 memmove(pos, pos + CCMP_HDR_LEN, hdr_len);
 pos += hdr_len;


 i = CCMP_PN_LEN - 1;
 while (i >= 0) {
  key->tx_pn[i]++;
  if (key->tx_pn[i] != 0)
   break;
  i--;
 }

 *pos++ = key->tx_pn[5];
 *pos++ = key->tx_pn[4];
 *pos++ = 0;
 *pos++ = (key->key_idx << 6) | BIT(5) ;
 *pos++ = key->tx_pn[3];
 *pos++ = key->tx_pn[2];
 *pos++ = key->tx_pn[1];
 *pos++ = key->tx_pn[0];

 hdr = (struct rtl_80211_hdr_4addr *)skb->data;
 if (!tcb_desc->bHwSec) {
  struct aead_request *req;
  struct scatterlist sg[2];
  u8 *aad = key->tx_aad;
  u8 iv[AES_BLOCK_LEN];
  int aad_len, ret;
  size_t data_len = skb->len - hdr_len - CCMP_HDR_LEN;

  req = aead_request_alloc(key->tfm, GFP_ATOMIC);
  if (!req)
   return -ENOMEM;

  aad_len = ccmp_init_iv_and_aad(hdr, key->tx_pn, iv, aad);

  skb_put(skb, CCMP_MIC_LEN);

  sg_init_table(sg, 2);
  sg_set_buf(&sg[0], aad, aad_len);
  sg_set_buf(&sg[1], skb->data + hdr_len + CCMP_HDR_LEN,
      data_len + CCMP_MIC_LEN);

  aead_request_set_callback(req, 0, ((void*)0), ((void*)0));
  aead_request_set_ad(req, aad_len);
  aead_request_set_crypt(req, sg, sg, data_len, iv);

  ret = crypto_aead_encrypt(req);
  aead_request_free(req);

  return ret;
 }
 return 0;
}
