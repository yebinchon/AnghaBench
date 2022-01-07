
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct ieee80211_info_element {int dummy; } ;
struct ieee80211_authentication {int status; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int IEEE80211_DEBUG_MGMT (char*,int) ;
 int MFIE_TYPE_CHALLENGE ;
 int * kmemdup (int *,int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 auth_parse(struct sk_buff *skb, u8 **challenge, int *chlen)
{
 struct ieee80211_authentication *a;
 u8 *t;
 if (skb->len < (sizeof(struct ieee80211_authentication) - sizeof(struct ieee80211_info_element))) {
  IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n", skb->len);
  return 0xcafe;
 }
 *challenge = ((void*)0);
 a = (struct ieee80211_authentication *)skb->data;
 if (skb->len > (sizeof(struct ieee80211_authentication) + 3)) {
  t = skb->data + sizeof(struct ieee80211_authentication);

  if (*(t++) == MFIE_TYPE_CHALLENGE) {
   *chlen = *(t++);
   *challenge = kmemdup(t, *chlen, GFP_ATOMIC);
   if (!*challenge)
    return -ENOMEM;
  }
 }

 return le16_to_cpu(a->status);
}
