
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int MSR_LINKTYPE_ADHOC ;
 int MSR_LINKTYPE_AP ;
 int MSR_LINKTYPE_MASK ;
 int MSR_LINKTYPE_NONE ;
 int MSR_LINKTYPE_STATION ;




 int REG_MSR ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int ) ;

__attribute__((used)) static void rtl8xxxu_set_linktype(struct rtl8xxxu_priv *priv,
      enum nl80211_iftype linktype)
{
 u8 val8;

 val8 = rtl8xxxu_read8(priv, REG_MSR);
 val8 &= ~MSR_LINKTYPE_MASK;

 switch (linktype) {
 case 128:
  val8 |= MSR_LINKTYPE_NONE;
  break;
 case 131:
  val8 |= MSR_LINKTYPE_ADHOC;
  break;
 case 129:
  val8 |= MSR_LINKTYPE_STATION;
  break;
 case 130:
  val8 |= MSR_LINKTYPE_AP;
  break;
 default:
  goto out;
 }

 rtl8xxxu_write8(priv, REG_MSR, val8);
out:
 return;
}
