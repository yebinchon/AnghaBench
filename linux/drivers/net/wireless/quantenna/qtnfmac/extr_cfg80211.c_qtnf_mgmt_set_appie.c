
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtnf_vif {int dummy; } ;
struct cfg80211_beacon_data {int assocresp_ies_len; int * assocresp_ies; int proberesp_ies_len; int * proberesp_ies; int beacon_ies_len; int * beacon_ies; } ;


 int QLINK_IE_SET_ASSOC_RESP ;
 int QLINK_IE_SET_BEACON_IES ;
 int QLINK_IE_SET_PROBE_RESP_IES ;
 int qtnf_cmd_send_mgmt_set_appie (struct qtnf_vif*,int ,int *,int ) ;

__attribute__((used)) static int qtnf_mgmt_set_appie(struct qtnf_vif *vif,
          const struct cfg80211_beacon_data *info)
{
 int ret = 0;

 if (!info->beacon_ies || !info->beacon_ies_len) {
  ret = qtnf_cmd_send_mgmt_set_appie(vif, QLINK_IE_SET_BEACON_IES,
         ((void*)0), 0);
 } else {
  ret = qtnf_cmd_send_mgmt_set_appie(vif, QLINK_IE_SET_BEACON_IES,
         info->beacon_ies,
         info->beacon_ies_len);
 }

 if (ret)
  goto out;

 if (!info->proberesp_ies || !info->proberesp_ies_len) {
  ret = qtnf_cmd_send_mgmt_set_appie(vif,
         QLINK_IE_SET_PROBE_RESP_IES,
         ((void*)0), 0);
 } else {
  ret = qtnf_cmd_send_mgmt_set_appie(vif,
         QLINK_IE_SET_PROBE_RESP_IES,
         info->proberesp_ies,
         info->proberesp_ies_len);
 }

 if (ret)
  goto out;

 if (!info->assocresp_ies || !info->assocresp_ies_len) {
  ret = qtnf_cmd_send_mgmt_set_appie(vif,
         QLINK_IE_SET_ASSOC_RESP,
         ((void*)0), 0);
 } else {
  ret = qtnf_cmd_send_mgmt_set_appie(vif,
         QLINK_IE_SET_ASSOC_RESP,
         info->assocresp_ies,
         info->assocresp_ies_len);
 }

out:
 return ret;
}
