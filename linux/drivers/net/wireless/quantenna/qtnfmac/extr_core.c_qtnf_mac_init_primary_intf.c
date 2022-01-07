
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_wmac {struct qtnf_vif* iflist; } ;
struct TYPE_2__ {int wiphy; int iftype; } ;
struct qtnf_vif {scalar_t__ cons_tx_timeout_cnt; int reset_work; TYPE_1__ wdev; int bss_priority; } ;


 int INIT_WORK (int *,int ) ;
 int NL80211_IFTYPE_STATION ;
 int QTNF_DEF_BSS_PRIORITY ;
 size_t QTNF_PRIMARY_VIF_IDX ;
 int priv_to_wiphy (struct qtnf_wmac*) ;
 int qtnf_vif_reset_handler ;

__attribute__((used)) static void qtnf_mac_init_primary_intf(struct qtnf_wmac *mac)
{
 struct qtnf_vif *vif = &mac->iflist[QTNF_PRIMARY_VIF_IDX];

 vif->wdev.iftype = NL80211_IFTYPE_STATION;
 vif->bss_priority = QTNF_DEF_BSS_PRIORITY;
 vif->wdev.wiphy = priv_to_wiphy(mac);
 INIT_WORK(&vif->reset_work, qtnf_vif_reset_handler);
 vif->cons_tx_timeout_cnt = 0;
}
