
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rtllib_hdr_4addr {int addr2; int frame_ctl; } ;
struct rtllib_device {int dev; scalar_t__ need_sw_enc; scalar_t__ hwsec_active; } ;
struct lib80211_crypt_data {int refcnt; int priv; TYPE_1__* ops; } ;
struct cb_desc {int bHwSec; } ;
struct TYPE_2__ {int (* decrypt_msdu ) (struct sk_buff*,int,int,int ) ;} ;


 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int ,int) ;
 int rtllib_get_hdrlen (int ) ;
 int stub1 (struct sk_buff*,int,int,int ) ;

__attribute__((used)) static inline int
rtllib_rx_frame_decrypt_msdu(struct rtllib_device *ieee, struct sk_buff *skb,
        int keyidx, struct lib80211_crypt_data *crypt)
{
 struct rtllib_hdr_4addr *hdr;
 int res, hdrlen;

 if (crypt == ((void*)0) || crypt->ops->decrypt_msdu == ((void*)0))
  return 0;
 if (ieee->hwsec_active) {
  struct cb_desc *tcb_desc = (struct cb_desc *)
      (skb->cb + MAX_DEV_ADDR_SIZE);

  tcb_desc->bHwSec = 1;

  if (ieee->need_sw_enc)
   tcb_desc->bHwSec = 0;
 }

 hdr = (struct rtllib_hdr_4addr *) skb->data;
 hdrlen = rtllib_get_hdrlen(le16_to_cpu(hdr->frame_ctl));

 atomic_inc(&crypt->refcnt);
 res = crypt->ops->decrypt_msdu(skb, keyidx, hdrlen, crypt->priv);
 atomic_dec(&crypt->refcnt);
 if (res < 0) {
  netdev_dbg(ieee->dev,
      "MSDU decryption/MIC verification failed (SA= %pM keyidx=%d)\n",
      hdr->addr2, keyidx);
  return -1;
 }

 return 0;
}
