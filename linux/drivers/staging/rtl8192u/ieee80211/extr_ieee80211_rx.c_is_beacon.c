
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 scalar_t__ IEEE80211_STYPE_BEACON ;
 scalar_t__ WLAN_FC_GET_STYPE (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int is_beacon(__le16 fc)
{
 return (WLAN_FC_GET_STYPE(le16_to_cpu(fc)) == IEEE80211_STYPE_BEACON);
}
