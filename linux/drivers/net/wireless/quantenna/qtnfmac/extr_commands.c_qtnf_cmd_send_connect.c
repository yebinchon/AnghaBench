
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_2__* mac; int bssid; int vifid; } ;
struct qlink_auth_encr {int privacy; void* control_port_ethertype; int control_port_no_encrypt; int control_port; void** akm_suites; void* n_akm_suites; void** ciphers_pairwise; void* n_ciphers_pairwise; void* cipher_group; void* wpa_versions; int auth_type; } ;
struct qlink_cmd_connect {int mfp; struct qlink_auth_encr aen; int pbss; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; void* flags; void* bg_scan_period; int prev_bssid; int bssid_hint; int bssid; } ;
struct TYPE_3__ {int control_port_ethertype; int control_port_no_encrypt; int control_port; int * akm_suites; int n_akm_suites; int * ciphers_pairwise; int n_ciphers_pairwise; int cipher_group; int wpa_versions; } ;
struct cfg80211_connect_params {scalar_t__ bg_scan_period; int flags; scalar_t__ ie_len; int channel; int ie; int ssid_len; int ssid; TYPE_1__ crypto; int mfp; int privacy; int auth_type; int pbss; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int prev_bssid; int bssid_hint; } ;
struct TYPE_4__ {int bus; int macid; } ;


 int ASSOC_REQ_DISABLE_HT ;
 int ASSOC_REQ_DISABLE_VHT ;
 int ASSOC_REQ_USE_RRM ;
 int ENOMEM ;
 int QLINK_CMD_CONNECT ;
 int QLINK_IE_SET_ASSOC_REQ ;
 int QLINK_MAX_NR_AKM_SUITES ;
 int QLINK_MAX_NR_CIPHER_SUITES ;
 int QLINK_STA_CONNECT_DISABLE_HT ;
 int QLINK_STA_CONNECT_DISABLE_VHT ;
 int QLINK_STA_CONNECT_USE_RRM ;
 scalar_t__ SHRT_MAX ;
 int WLAN_EID_SSID ;
 int be16_to_cpu (int ) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 int memcpy (int *,int *,int) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_channel_tlv_add (struct sk_buff*,int ) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;
 int qtnf_cmd_skb_put_tlv_arr (struct sk_buff*,int ,int ,int ) ;
 int qtnf_cmd_tlv_ie_set_add (struct sk_buff*,int ,int ,scalar_t__) ;

int qtnf_cmd_send_connect(struct qtnf_vif *vif,
     struct cfg80211_connect_params *sme)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_connect *cmd;
 struct qlink_auth_encr *aen;
 int ret;
 int i;
 u32 connect_flags = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_CONNECT,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 cmd = (struct qlink_cmd_connect *)cmd_skb->data;

 ether_addr_copy(cmd->bssid, vif->bssid);

 if (sme->bssid_hint)
  ether_addr_copy(cmd->bssid_hint, sme->bssid_hint);
 else
  eth_zero_addr(cmd->bssid_hint);

 if (sme->prev_bssid)
  ether_addr_copy(cmd->prev_bssid, sme->prev_bssid);
 else
  eth_zero_addr(cmd->prev_bssid);

 if ((sme->bg_scan_period >= 0) &&
     (sme->bg_scan_period <= SHRT_MAX))
  cmd->bg_scan_period = cpu_to_le16(sme->bg_scan_period);
 else
  cmd->bg_scan_period = cpu_to_le16(-1);

 if (sme->flags & ASSOC_REQ_DISABLE_HT)
  connect_flags |= QLINK_STA_CONNECT_DISABLE_HT;
 if (sme->flags & ASSOC_REQ_DISABLE_VHT)
  connect_flags |= QLINK_STA_CONNECT_DISABLE_VHT;
 if (sme->flags & ASSOC_REQ_USE_RRM)
  connect_flags |= QLINK_STA_CONNECT_USE_RRM;

 cmd->flags = cpu_to_le32(connect_flags);
 memcpy(&cmd->ht_capa, &sme->ht_capa, sizeof(cmd->ht_capa));
 memcpy(&cmd->ht_capa_mask, &sme->ht_capa_mask,
        sizeof(cmd->ht_capa_mask));
 memcpy(&cmd->vht_capa, &sme->vht_capa, sizeof(cmd->vht_capa));
 memcpy(&cmd->vht_capa_mask, &sme->vht_capa_mask,
        sizeof(cmd->vht_capa_mask));
 cmd->pbss = sme->pbss;

 aen = &cmd->aen;
 aen->auth_type = sme->auth_type;
 aen->privacy = !!sme->privacy;
 cmd->mfp = sme->mfp;
 aen->wpa_versions = cpu_to_le32(sme->crypto.wpa_versions);
 aen->cipher_group = cpu_to_le32(sme->crypto.cipher_group);
 aen->n_ciphers_pairwise = cpu_to_le32(sme->crypto.n_ciphers_pairwise);

 for (i = 0; i < QLINK_MAX_NR_CIPHER_SUITES; i++)
  aen->ciphers_pairwise[i] =
   cpu_to_le32(sme->crypto.ciphers_pairwise[i]);

 aen->n_akm_suites = cpu_to_le32(sme->crypto.n_akm_suites);

 for (i = 0; i < QLINK_MAX_NR_AKM_SUITES; i++)
  aen->akm_suites[i] = cpu_to_le32(sme->crypto.akm_suites[i]);

 aen->control_port = sme->crypto.control_port;
 aen->control_port_no_encrypt =
  sme->crypto.control_port_no_encrypt;
 aen->control_port_ethertype =
  cpu_to_le16(be16_to_cpu(sme->crypto.control_port_ethertype));

 qtnf_cmd_skb_put_tlv_arr(cmd_skb, WLAN_EID_SSID, sme->ssid,
     sme->ssid_len);

 if (sme->ie_len != 0)
  qtnf_cmd_tlv_ie_set_add(cmd_skb, QLINK_IE_SET_ASSOC_REQ,
     sme->ie, sme->ie_len);

 if (sme->channel)
  qtnf_cmd_channel_tlv_add(cmd_skb, sme->channel);

 qtnf_bus_lock(vif->mac->bus);
 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
