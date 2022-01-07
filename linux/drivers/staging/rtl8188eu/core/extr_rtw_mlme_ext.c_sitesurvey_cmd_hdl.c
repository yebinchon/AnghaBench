
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct sitesurvey_parm {int scan_mode; int ch_num; int ch; TYPE_1__* ssid; } ;
struct TYPE_6__ {scalar_t__ state; int scan_mode; int ch; int ch_num; TYPE_2__* ssid; scalar_t__ channel_idx; scalar_t__ bss_cnt; } ;
struct mlme_ext_priv {TYPE_3__ sitesurvey_res; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_5__ {scalar_t__ ssid_length; int ssid; } ;
struct TYPE_4__ {scalar_t__ ssid_length; int ssid; } ;


 int DYNAMIC_FUNC_DISABLE ;
 int H2C_SUCCESS ;
 int HW_VAR_CHECK_TXBUF ;
 int HW_VAR_INITIAL_GAIN ;
 int HW_VAR_MLME_SITESURVEY ;
 int IW_ESSID_MAX_SIZE ;
 int RTW_CHANNEL_SCAN_AMOUNT ;
 size_t RTW_SSID_SCAN_AMOUNT ;
 scalar_t__ SCAN_DISABLE ;
 scalar_t__ SCAN_PROCESS ;
 scalar_t__ SCAN_START ;
 scalar_t__ SCAN_TXNULL ;
 int Save_DM_Func_Flag (struct adapter*) ;
 int Set_MSR (struct adapter*,int ) ;
 int Switch_DM_Func (struct adapter*,int ,int) ;
 int _HW_STATE_NOLINK_ ;
 scalar_t__ is_client_associated_to_ap (struct adapter*) ;
 int issue_nulldata (struct adapter*,int *,int,int,int) ;
 int memcpy (int ,int ,int ) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;
 int rtw_scan_ch_decision (struct adapter*,int ,int ,int ,int ) ;
 int set_survey_timer (struct mlme_ext_priv*,int) ;
 int site_survey (struct adapter*) ;

u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct sitesurvey_parm *pparm = (struct sitesurvey_parm *)pbuf;
 u8 bdelayscan = 0;
 u8 val8;
 u32 initialgain;
 u32 i;

 if (pmlmeext->sitesurvey_res.state == SCAN_DISABLE) {

  rtw_hal_set_hwreg(padapter, HW_VAR_CHECK_TXBUF, ((void*)0));

  pmlmeext->sitesurvey_res.state = SCAN_START;
  pmlmeext->sitesurvey_res.bss_cnt = 0;
  pmlmeext->sitesurvey_res.channel_idx = 0;

  for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
   if (pparm->ssid[i].ssid_length) {
    memcpy(pmlmeext->sitesurvey_res.ssid[i].ssid, pparm->ssid[i].ssid, IW_ESSID_MAX_SIZE);
    pmlmeext->sitesurvey_res.ssid[i].ssid_length = pparm->ssid[i].ssid_length;
   } else {
    pmlmeext->sitesurvey_res.ssid[i].ssid_length = 0;
   }
  }

  pmlmeext->sitesurvey_res.ch_num = rtw_scan_ch_decision(padapter
   , pmlmeext->sitesurvey_res.ch, RTW_CHANNEL_SCAN_AMOUNT
   , pparm->ch, pparm->ch_num
 );

  pmlmeext->sitesurvey_res.scan_mode = pparm->scan_mode;


  if (is_client_associated_to_ap(padapter)) {
   pmlmeext->sitesurvey_res.state = SCAN_TXNULL;

   issue_nulldata(padapter, ((void*)0), 1, 3, 500);

   bdelayscan = 1;
  }
  if (bdelayscan) {

   set_survey_timer(pmlmeext, 50);
   return H2C_SUCCESS;
  }
 }

 if ((pmlmeext->sitesurvey_res.state == SCAN_START) || (pmlmeext->sitesurvey_res.state == SCAN_TXNULL)) {

  Save_DM_Func_Flag(padapter);
  Switch_DM_Func(padapter, DYNAMIC_FUNC_DISABLE, 0);


  initialgain = 0x1E;

  rtw_hal_set_hwreg(padapter, HW_VAR_INITIAL_GAIN, (u8 *)(&initialgain));


  Set_MSR(padapter, _HW_STATE_NOLINK_);

  val8 = 1;
  rtw_hal_set_hwreg(padapter, HW_VAR_MLME_SITESURVEY, (u8 *)(&val8));

  pmlmeext->sitesurvey_res.state = SCAN_PROCESS;
 }

 site_survey(padapter);

 return H2C_SUCCESS;
}
