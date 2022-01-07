
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int ) ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_MFP ;
 int NL80211_STA_FLAG_SHORT_PREAMBLE ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int NL80211_STA_FLAG_WME ;
 int QLINK_STA_FLAG_ASSOCIATED ;
 int QLINK_STA_FLAG_AUTHENTICATED ;
 int QLINK_STA_FLAG_AUTHORIZED ;
 int QLINK_STA_FLAG_MFP ;
 int QLINK_STA_FLAG_SHORT_PREAMBLE ;
 int QLINK_STA_FLAG_TDLS_PEER ;
 int QLINK_STA_FLAG_WME ;

__attribute__((used)) static u32 qtnf_encode_sta_flags(u32 flags)
{
 u32 code = 0;

 if (flags & BIT(NL80211_STA_FLAG_AUTHORIZED))
  code |= QLINK_STA_FLAG_AUTHORIZED;
 if (flags & BIT(NL80211_STA_FLAG_SHORT_PREAMBLE))
  code |= QLINK_STA_FLAG_SHORT_PREAMBLE;
 if (flags & BIT(NL80211_STA_FLAG_WME))
  code |= QLINK_STA_FLAG_WME;
 if (flags & BIT(NL80211_STA_FLAG_MFP))
  code |= QLINK_STA_FLAG_MFP;
 if (flags & BIT(NL80211_STA_FLAG_AUTHENTICATED))
  code |= QLINK_STA_FLAG_AUTHENTICATED;
 if (flags & BIT(NL80211_STA_FLAG_TDLS_PEER))
  code |= QLINK_STA_FLAG_TDLS_PEER;
 if (flags & BIT(NL80211_STA_FLAG_ASSOCIATED))
  code |= QLINK_STA_FLAG_ASSOCIATED;
 return code;
}
