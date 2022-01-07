
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wpa_enabled; } ;


 int printk (char*,char*) ;

__attribute__((used)) static int ieee80211_wpa_enable(struct ieee80211_device *ieee, int value)
{


 printk("%s WPA\n", value ? "enabling" : "disabling");
 ieee->wpa_enabled = value;
 return 0;
}
