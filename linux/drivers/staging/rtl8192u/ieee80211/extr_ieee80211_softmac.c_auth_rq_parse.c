
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_info_element {int dummy; } ;
struct TYPE_2__ {int addr2; } ;
struct ieee80211_authentication {int algorithm; TYPE_1__ header; } ;


 int ETH_ALEN ;
 int IEEE80211_DEBUG_MGMT (char*,int) ;
 scalar_t__ WLAN_AUTH_OPEN ;
 int WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG ;
 int WLAN_STATUS_SUCCESS ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int auth_rq_parse(struct sk_buff *skb, u8 *dest)
{
 struct ieee80211_authentication *a;

 if (skb->len < (sizeof(struct ieee80211_authentication) - sizeof(struct ieee80211_info_element))) {
  IEEE80211_DEBUG_MGMT("invalid len in auth request: %d\n", skb->len);
  return -1;
 }
 a = (struct ieee80211_authentication *)skb->data;

 memcpy(dest, a->header.addr2, ETH_ALEN);

 if (le16_to_cpu(a->algorithm) != WLAN_AUTH_OPEN)
  return WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;

 return WLAN_STATUS_SUCCESS;
}
