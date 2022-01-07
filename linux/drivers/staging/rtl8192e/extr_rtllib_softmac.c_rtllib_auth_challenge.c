
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtllib_network {int bssid; } ;
struct rtllib_hdr_3addr {int dummy; } ;
struct TYPE_2__ {int tx_auth_rq; } ;
struct rtllib_device {int associate_timer; int dev; TYPE_1__ softmac_stats; int associate_seq; struct rtllib_network current_network; } ;


 int HZ ;
 int MFIE_TYPE_CHALLENGE ;
 scalar_t__ jiffies ;
 int kfree (int *) ;
 int memcpy (int *,int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_dbg (int ,char*) ;
 int rtllib_associate_abort (struct rtllib_device*) ;
 struct sk_buff* rtllib_authentication_req (struct rtllib_network*,struct rtllib_device*,int,int ) ;
 int rtllib_encrypt_fragment (struct rtllib_device*,struct sk_buff*,int) ;
 int * skb_put (struct sk_buff*,int) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_auth_challenge(struct rtllib_device *ieee, u8 *challenge,
      int chlen)
{
 u8 *c;
 struct sk_buff *skb;
 struct rtllib_network *beacon = &ieee->current_network;

 ieee->associate_seq++;
 ieee->softmac_stats.tx_auth_rq++;

 skb = rtllib_authentication_req(beacon, ieee, chlen + 2, beacon->bssid);

 if (!skb)
  rtllib_associate_abort(ieee);
 else {
  c = skb_put(skb, chlen+2);
  *(c++) = MFIE_TYPE_CHALLENGE;
  *(c++) = chlen;
  memcpy(c, challenge, chlen);

  netdev_dbg(ieee->dev,
      "Sending authentication challenge response\n");

  rtllib_encrypt_fragment(ieee, skb,
     sizeof(struct rtllib_hdr_3addr));

  softmac_mgmt_xmit(skb, ieee);
  mod_timer(&ieee->associate_timer, jiffies + (HZ/2));
 }
 kfree(challenge);
}
