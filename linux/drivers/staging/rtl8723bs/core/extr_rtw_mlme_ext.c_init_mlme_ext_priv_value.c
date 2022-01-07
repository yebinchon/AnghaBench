
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bss_cnt; scalar_t__ channel_idx; int state; } ;
struct mlme_ext_info {scalar_t__ dialogToken; int preamble_mode; int slotTime; int chg_txt; scalar_t__ authModeToggle; int enc_algo; scalar_t__ iv; scalar_t__ key_index; int auth_algo; scalar_t__ auth_seq; scalar_t__ link_count; scalar_t__ reassoc_count; scalar_t__ reauth_count; int state; } ;
struct mlme_ext_priv {int scan_abort; int action_public_rxseq; int action_public_dialog_token; TYPE_2__ sitesurvey_res; int tx_rate; int cur_wireless_mode; scalar_t__ retry; int cur_ch_offset; int cur_bwmode; int cur_channel; scalar_t__ mgnt_80211w_IPN_rx; scalar_t__ mgnt_80211w_IPN; scalar_t__ sa_query_seq; scalar_t__ mgnt_seq; int event_seq; struct mlme_ext_info mlmext_info; } ;
struct TYPE_3__ {int wireless_mode; int channel; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;


 int CHANNEL_WIDTH_20 ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int IEEE80211_CCK_RATE_1MB ;
 int PREAMBLE_AUTO ;
 int SCAN_DISABLE ;
 int SHORT_SLOT_TIME ;
 int WIFI_FW_NULL_STATE ;
 int _NO_PRIVACY_ ;
 int atomic_set (int *,int ) ;
 int dot11AuthAlgrthm_Open ;
 int init_mlme_default_rate_set (struct adapter*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void init_mlme_ext_priv_value(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 atomic_set(&pmlmeext->event_seq, 0);
 pmlmeext->mgnt_seq = 0;
 pmlmeext->sa_query_seq = 0;
 pmlmeext->mgnt_80211w_IPN = 0;
 pmlmeext->mgnt_80211w_IPN_rx = 0;
 pmlmeext->cur_channel = padapter->registrypriv.channel;
 pmlmeext->cur_bwmode = CHANNEL_WIDTH_20;
 pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 pmlmeext->retry = 0;

 pmlmeext->cur_wireless_mode = padapter->registrypriv.wireless_mode;

 init_mlme_default_rate_set(padapter);

 pmlmeext->tx_rate = IEEE80211_CCK_RATE_1MB;
 pmlmeext->sitesurvey_res.state = SCAN_DISABLE;
 pmlmeext->sitesurvey_res.channel_idx = 0;
 pmlmeext->sitesurvey_res.bss_cnt = 0;
 pmlmeext->scan_abort = 0;

 pmlmeinfo->state = WIFI_FW_NULL_STATE;
 pmlmeinfo->reauth_count = 0;
 pmlmeinfo->reassoc_count = 0;
 pmlmeinfo->link_count = 0;
 pmlmeinfo->auth_seq = 0;
 pmlmeinfo->auth_algo = dot11AuthAlgrthm_Open;
 pmlmeinfo->key_index = 0;
 pmlmeinfo->iv = 0;

 pmlmeinfo->enc_algo = _NO_PRIVACY_;
 pmlmeinfo->authModeToggle = 0;

 memset(pmlmeinfo->chg_txt, 0, 128);

 pmlmeinfo->slotTime = SHORT_SLOT_TIME;
 pmlmeinfo->preamble_mode = PREAMBLE_AUTO;

 pmlmeinfo->dialogToken = 0;

 pmlmeext->action_public_rxseq = 0xffff;
 pmlmeext->action_public_dialog_token = 0xff;
}
