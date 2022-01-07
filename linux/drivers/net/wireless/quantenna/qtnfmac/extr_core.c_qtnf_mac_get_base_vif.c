
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_wmac {struct qtnf_vif* iflist; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;
struct qtnf_vif {TYPE_1__ wdev; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 size_t QTNF_PRIMARY_VIF_IDX ;

struct qtnf_vif *qtnf_mac_get_base_vif(struct qtnf_wmac *mac)
{
 struct qtnf_vif *vif;

 vif = &mac->iflist[QTNF_PRIMARY_VIF_IDX];

 if (vif->wdev.iftype == NL80211_IFTYPE_UNSPECIFIED)
  return ((void*)0);

 return vif;
}
