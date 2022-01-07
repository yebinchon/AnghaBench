
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int monitor_present; } ;
struct ieee80211_conf {int flags; } ;


 int IEEE80211_CONF_PS ;

__attribute__((used)) static bool wl1251_can_do_pm(struct ieee80211_conf *conf, struct wl1251 *wl)
{
 return (conf->flags & IEEE80211_CONF_PS) && !wl->monitor_present;
}
