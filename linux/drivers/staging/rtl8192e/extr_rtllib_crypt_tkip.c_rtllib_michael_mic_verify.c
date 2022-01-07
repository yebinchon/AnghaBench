
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; int len; scalar_t__ dev; } ;
struct rtllib_tkip_data {int* rx_hdr; int rx_iv16_new; int rx_iv16; int rx_iv32_new; int rx_iv32; int dot11RSNAStatsTKIPLocalMICFailures; int * key; int rx_tfm_michael; int key_set; } ;
struct rtllib_hdr_4addr {int addr2; int frame_ctl; } ;


 scalar_t__ RTLLIB_QOS_HAS_SEQ (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ memcmp (int *,int*,int) ;
 scalar_t__ michael_mic (int ,int *,int*,int*,int,int *) ;
 int michael_mic_hdr (struct sk_buff*,int*) ;
 int netdev_dbg (scalar_t__,char*,int,...) ;
 int pr_info (char*) ;
 int rtllib_michael_mic_failure (scalar_t__,struct rtllib_hdr_4addr*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int rtllib_michael_mic_verify(struct sk_buff *skb, int keyidx,
         int hdr_len, void *priv)
{
 struct rtllib_tkip_data *tkey = priv;
 u8 mic[8];
 struct rtllib_hdr_4addr *hdr;

 hdr = (struct rtllib_hdr_4addr *) skb->data;

 if (!tkey->key_set)
  return -1;

 michael_mic_hdr(skb, tkey->rx_hdr);
 if (RTLLIB_QOS_HAS_SEQ(le16_to_cpu(hdr->frame_ctl)))
  tkey->rx_hdr[12] = *(skb->data + hdr_len - 2) & 0x07;

 if (michael_mic(tkey->rx_tfm_michael, &tkey->key[24], tkey->rx_hdr,
   skb->data + hdr_len, skb->len - 8 - hdr_len, mic))
  return -1;

 if (memcmp(mic, skb->data + skb->len - 8, 8) != 0) {
  struct rtllib_hdr_4addr *hdr;

  hdr = (struct rtllib_hdr_4addr *) skb->data;
  netdev_dbg(skb->dev,
      "Michael MIC verification failed for MSDU from %pM keyidx=%d\n",
      hdr->addr2, keyidx);
  netdev_dbg(skb->dev, "%d\n",
      memcmp(mic, skb->data + skb->len - 8, 8) != 0);
  if (skb->dev) {
   pr_info("skb->dev != NULL\n");
   rtllib_michael_mic_failure(skb->dev, hdr, keyidx);
  }
  tkey->dot11RSNAStatsTKIPLocalMICFailures++;
  return -1;
 }




 tkey->rx_iv32 = tkey->rx_iv32_new;
 tkey->rx_iv16 = tkey->rx_iv16_new;

 skb_trim(skb, skb->len - 8);

 return 0;
}
