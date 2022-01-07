
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; int scanning; int dev; int (* start_scan ) (int ) ;int softmac_scan_wq; } ;


 int IEEE_SOFTMAC_SCAN ;
 scalar_t__ IS_COUNTRY_IE_VALID (struct ieee80211_device*) ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int RESET_CIE_WATCHDOG (struct ieee80211_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void ieee80211_start_scan(struct ieee80211_device *ieee)
{
 if (IS_DOT11D_ENABLE(ieee)) {
  if (IS_COUNTRY_IE_VALID(ieee))
   RESET_CIE_WATCHDOG(ieee);
 }
 if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
  if (ieee->scanning == 0) {
   ieee->scanning = 1;
   schedule_delayed_work(&ieee->softmac_scan_wq, 0);
  }
 } else {
  ieee->start_scan(ieee->dev);
 }
}
