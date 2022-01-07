
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; } ;
struct wlan_acl_pool {TYPE_2__* aclnode; scalar_t__ mode; scalar_t__ num; TYPE_1__ acl_node_q; } ;
struct sta_priv {int ** sta_aid; struct wlan_acl_pool acl_list; } ;
struct mlme_priv {int update_bcn; int olbc; int olbc_ht; int * p2p_probe_resp_ie; int * p2p_beacon_ie; int * wps_assoc_resp_ie; int * wps_probe_resp_ie; int * wps_beacon_ie; scalar_t__ ht_op_mode; scalar_t__ num_sta_ht_20mhz; scalar_t__ num_sta_no_ht; scalar_t__ num_sta_ht_no_gf; scalar_t__ num_sta_no_short_preamble; scalar_t__ num_sta_no_short_slot_time; scalar_t__ num_sta_non_erp; } ;
struct mlme_ext_priv {int bstart_bss; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct sta_priv stapriv; struct mlme_priv mlmepriv; } ;
struct TYPE_4__ {int valid; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int NUM_ACL ;
 int NUM_STA ;

void start_ap_mode(struct adapter *padapter)
{
 int i;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;

 pmlmepriv->update_bcn = 0;


 pmlmeext->bstart_bss = 0;

 pmlmepriv->num_sta_non_erp = 0;

 pmlmepriv->num_sta_no_short_slot_time = 0;

 pmlmepriv->num_sta_no_short_preamble = 0;

 pmlmepriv->num_sta_ht_no_gf = 0;
 pmlmepriv->num_sta_no_ht = 0;
 pmlmepriv->num_sta_ht_20mhz = 0;

 pmlmepriv->olbc = 0;

 pmlmepriv->olbc_ht = 0;

 pmlmepriv->ht_op_mode = 0;

 for (i = 0; i < NUM_STA; i++)
  pstapriv->sta_aid[i] = ((void*)0);

 pmlmepriv->wps_beacon_ie = ((void*)0);
 pmlmepriv->wps_probe_resp_ie = ((void*)0);
 pmlmepriv->wps_assoc_resp_ie = ((void*)0);

 pmlmepriv->p2p_beacon_ie = ((void*)0);
 pmlmepriv->p2p_probe_resp_ie = ((void*)0);


 INIT_LIST_HEAD(&(pacl_list->acl_node_q.queue));
 pacl_list->num = 0;
 pacl_list->mode = 0;
 for (i = 0; i < NUM_ACL; i++) {
  INIT_LIST_HEAD(&pacl_list->aclnode[i].list);
  pacl_list->aclnode[i].valid = 0;
 }
}
