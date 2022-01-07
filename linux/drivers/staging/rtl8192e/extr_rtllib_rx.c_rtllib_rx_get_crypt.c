
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int* data; size_t len; } ;
struct rtllib_hdr_4addr {int addr2; int frame_ctl; } ;
struct TYPE_3__ {struct lib80211_crypt_data** crypt; } ;
struct rtllib_device {int dev; TYPE_1__ crypt_info; scalar_t__ host_decrypt; } ;
struct lib80211_crypt_data {TYPE_2__* ops; } ;
struct TYPE_4__ {int * decrypt_mpdu; } ;


 int RTLLIB_FCTL_WEP ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int ) ;

__attribute__((used)) static int rtllib_rx_get_crypt(struct rtllib_device *ieee, struct sk_buff *skb,
   struct lib80211_crypt_data **crypt, size_t hdrlen)
{
 struct rtllib_hdr_4addr *hdr = (struct rtllib_hdr_4addr *)skb->data;
 u16 fc = le16_to_cpu(hdr->frame_ctl);
 int idx = 0;

 if (ieee->host_decrypt) {
  if (skb->len >= hdrlen + 3)
   idx = skb->data[hdrlen + 3] >> 6;

  *crypt = ieee->crypt_info.crypt[idx];



  if (*crypt && ((*crypt)->ops == ((void*)0) ||
         (*crypt)->ops->decrypt_mpdu == ((void*)0)))
   *crypt = ((void*)0);

  if (!*crypt && (fc & RTLLIB_FCTL_WEP)) {





   netdev_dbg(ieee->dev,
       "Decryption failed (not set) (SA= %pM)\n",
       hdr->addr2);
   return -1;
  }
 }

 return 0;
}
