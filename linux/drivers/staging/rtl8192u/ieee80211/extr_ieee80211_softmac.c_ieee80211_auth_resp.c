
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_device {int tx_headroom; TYPE_1__* dev; } ;
struct TYPE_4__ {void* frame_ctl; int addr1; int addr2; int addr3; } ;
struct ieee80211_authentication {TYPE_2__ header; void* algorithm; void* transaction; void* status; } ;
struct TYPE_3__ {int * dev_addr; } ;


 int ETH_ALEN ;
 int IEEE80211_STYPE_AUTH ;
 int WLAN_AUTH_OPEN ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static struct sk_buff *ieee80211_auth_resp(struct ieee80211_device *ieee,
        int status, u8 *dest)
{
 struct sk_buff *skb;
 struct ieee80211_authentication *auth;
 int len = ieee->tx_headroom + sizeof(struct ieee80211_authentication) + 1;

 skb = dev_alloc_skb(len);

 if (!skb)
  return ((void*)0);

 skb->len = sizeof(struct ieee80211_authentication);

 auth = (struct ieee80211_authentication *)skb->data;

 auth->status = cpu_to_le16(status);
 auth->transaction = cpu_to_le16(2);
 auth->algorithm = cpu_to_le16(WLAN_AUTH_OPEN);

 memcpy(auth->header.addr3, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(auth->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 memcpy(auth->header.addr1, dest, ETH_ALEN);
 auth->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_AUTH);
 return skb;
}
