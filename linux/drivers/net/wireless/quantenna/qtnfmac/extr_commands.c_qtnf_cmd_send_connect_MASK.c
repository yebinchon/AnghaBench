#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_2__* mac; int /*<<< orphan*/  bssid; int /*<<< orphan*/  vifid; } ;
struct qlink_auth_encr {int privacy; void* control_port_ethertype; int /*<<< orphan*/  control_port_no_encrypt; int /*<<< orphan*/  control_port; void** akm_suites; void* n_akm_suites; void** ciphers_pairwise; void* n_ciphers_pairwise; void* cipher_group; void* wpa_versions; int /*<<< orphan*/  auth_type; } ;
struct qlink_cmd_connect {int /*<<< orphan*/  mfp; struct qlink_auth_encr aen; int /*<<< orphan*/  pbss; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  ht_capa_mask; int /*<<< orphan*/  ht_capa; void* flags; void* bg_scan_period; int /*<<< orphan*/  prev_bssid; int /*<<< orphan*/  bssid_hint; int /*<<< orphan*/  bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  control_port_ethertype; int /*<<< orphan*/  control_port_no_encrypt; int /*<<< orphan*/  control_port; int /*<<< orphan*/ * akm_suites; int /*<<< orphan*/  n_akm_suites; int /*<<< orphan*/ * ciphers_pairwise; int /*<<< orphan*/  n_ciphers_pairwise; int /*<<< orphan*/  cipher_group; int /*<<< orphan*/  wpa_versions; } ;
struct cfg80211_connect_params {scalar_t__ bg_scan_period; int flags; scalar_t__ ie_len; int /*<<< orphan*/  channel; int /*<<< orphan*/  ie; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; TYPE_1__ crypto; int /*<<< orphan*/  mfp; int /*<<< orphan*/  privacy; int /*<<< orphan*/  auth_type; int /*<<< orphan*/  pbss; int /*<<< orphan*/  vht_capa_mask; int /*<<< orphan*/  vht_capa; int /*<<< orphan*/  ht_capa_mask; int /*<<< orphan*/  ht_capa; int /*<<< orphan*/  prev_bssid; int /*<<< orphan*/  bssid_hint; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ASSOC_REQ_DISABLE_HT ; 
 int ASSOC_REQ_DISABLE_VHT ; 
 int ASSOC_REQ_USE_RRM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_CONNECT ; 
 int /*<<< orphan*/  QLINK_IE_SET_ASSOC_REQ ; 
 int QLINK_MAX_NR_AKM_SUITES ; 
 int QLINK_MAX_NR_CIPHER_SUITES ; 
 int /*<<< orphan*/  QLINK_STA_CONNECT_DISABLE_HT ; 
 int /*<<< orphan*/  QLINK_STA_CONNECT_DISABLE_VHT ; 
 int /*<<< orphan*/  QLINK_STA_CONNECT_USE_RRM ; 
 scalar_t__ SHRT_MAX ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC13(struct qtnf_vif *vif,
			  struct cfg80211_connect_params *sme)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_connect *cmd;
	struct qlink_auth_encr *aen;
	int ret;
	int i;
	u32 connect_flags = 0;

	cmd_skb = FUNC8(vif->mac->macid, vif->vifid,
					    QLINK_CMD_CONNECT,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	cmd = (struct qlink_cmd_connect *)cmd_skb->data;

	FUNC4(cmd->bssid, vif->bssid);

	if (sme->bssid_hint)
		FUNC4(cmd->bssid_hint, sme->bssid_hint);
	else
		FUNC3(cmd->bssid_hint);

	if (sme->prev_bssid)
		FUNC4(cmd->prev_bssid, sme->prev_bssid);
	else
		FUNC3(cmd->prev_bssid);

	if ((sme->bg_scan_period >= 0) &&
	    (sme->bg_scan_period <= SHRT_MAX))
		cmd->bg_scan_period = FUNC1(sme->bg_scan_period);
	else
		cmd->bg_scan_period = FUNC1(-1); /* use default value */

	if (sme->flags & ASSOC_REQ_DISABLE_HT)
		connect_flags |= QLINK_STA_CONNECT_DISABLE_HT;
	if (sme->flags & ASSOC_REQ_DISABLE_VHT)
		connect_flags |= QLINK_STA_CONNECT_DISABLE_VHT;
	if (sme->flags & ASSOC_REQ_USE_RRM)
		connect_flags |= QLINK_STA_CONNECT_USE_RRM;

	cmd->flags = FUNC2(connect_flags);
	FUNC5(&cmd->ht_capa, &sme->ht_capa, sizeof(cmd->ht_capa));
	FUNC5(&cmd->ht_capa_mask, &sme->ht_capa_mask,
	       sizeof(cmd->ht_capa_mask));
	FUNC5(&cmd->vht_capa, &sme->vht_capa, sizeof(cmd->vht_capa));
	FUNC5(&cmd->vht_capa_mask, &sme->vht_capa_mask,
	       sizeof(cmd->vht_capa_mask));
	cmd->pbss = sme->pbss;

	aen = &cmd->aen;
	aen->auth_type = sme->auth_type;
	aen->privacy = !!sme->privacy;
	cmd->mfp = sme->mfp;
	aen->wpa_versions = FUNC2(sme->crypto.wpa_versions);
	aen->cipher_group = FUNC2(sme->crypto.cipher_group);
	aen->n_ciphers_pairwise = FUNC2(sme->crypto.n_ciphers_pairwise);

	for (i = 0; i < QLINK_MAX_NR_CIPHER_SUITES; i++)
		aen->ciphers_pairwise[i] =
			FUNC2(sme->crypto.ciphers_pairwise[i]);

	aen->n_akm_suites = FUNC2(sme->crypto.n_akm_suites);

	for (i = 0; i < QLINK_MAX_NR_AKM_SUITES; i++)
		aen->akm_suites[i] = FUNC2(sme->crypto.akm_suites[i]);

	aen->control_port = sme->crypto.control_port;
	aen->control_port_no_encrypt =
		sme->crypto.control_port_no_encrypt;
	aen->control_port_ethertype =
		FUNC1(FUNC0(sme->crypto.control_port_ethertype));

	FUNC11(cmd_skb, WLAN_EID_SSID, sme->ssid,
				 sme->ssid_len);

	if (sme->ie_len != 0)
		FUNC12(cmd_skb, QLINK_IE_SET_ASSOC_REQ,
					sme->ie, sme->ie_len);

	if (sme->channel)
		FUNC9(cmd_skb, sme->channel);

	FUNC6(vif->mac->bus);
	ret = FUNC10(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC7(vif->mac->bus);

	return ret;
}