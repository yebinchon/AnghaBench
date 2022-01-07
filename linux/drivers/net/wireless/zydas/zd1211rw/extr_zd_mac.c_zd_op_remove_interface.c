
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mac {int chip; int * vif; int type; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int NL80211_IFTYPE_UNSPECIFIED ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_mac_free_cur_beacon (struct zd_mac*) ;
 int zd_set_beacon_interval (int *,int ,int ,int ) ;
 int zd_write_mac_addr (int *,int *) ;

__attribute__((used)) static void zd_op_remove_interface(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 mac->type = NL80211_IFTYPE_UNSPECIFIED;
 mac->vif = ((void*)0);
 zd_set_beacon_interval(&mac->chip, 0, 0, NL80211_IFTYPE_UNSPECIFIED);
 zd_write_mac_addr(&mac->chip, ((void*)0));

 zd_mac_free_cur_beacon(mac);
}
