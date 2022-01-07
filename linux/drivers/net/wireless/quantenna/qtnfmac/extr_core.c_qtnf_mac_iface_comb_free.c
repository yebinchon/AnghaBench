
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_if_comb; struct ieee80211_iface_combination* if_comb; } ;
struct qtnf_wmac {TYPE_1__ macinfo; } ;
struct ieee80211_iface_combination {struct ieee80211_iface_combination* limits; } ;


 int kfree (struct ieee80211_iface_combination*) ;

void qtnf_mac_iface_comb_free(struct qtnf_wmac *mac)
{
 struct ieee80211_iface_combination *comb;
 int i;

 if (mac->macinfo.if_comb) {
  for (i = 0; i < mac->macinfo.n_if_comb; i++) {
   comb = &mac->macinfo.if_comb[i];
   kfree(comb->limits);
   comb->limits = ((void*)0);
  }

  kfree(mac->macinfo.if_comb);
  mac->macinfo.if_comb = ((void*)0);
 }
}
