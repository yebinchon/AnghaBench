
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sitesurvey_parm {void* ss_ssidlen; int ss_ssid; void* passive_mode; void* bsslimit; } ;
struct ndis_802_11_ssid {int SsidLength; int Ssid; } ;
struct mlme_priv {int passive_mode; int scan_to_timer; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct TYPE_2__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {scalar_t__ blnEnableRxFF0Filter; TYPE_1__ ledpriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;


 int GEN_CMD_CODE (int ) ;
 int GFP_ATOMIC ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 int LED_CTL_SITE_SURVEY ;
 int SCANNING_TIMEOUT ;
 int _FAIL ;
 int _FW_UNDER_SURVEY ;
 int _SUCCESS ;
 int _SiteSurvey ;
 void* cpu_to_le32 (int) ;
 int init_h2fwcmd_w_parm_no_rsp (struct cmd_obj*,struct sitesurvey_parm*,int ) ;
 scalar_t__ jiffies ;
 int kfree (struct cmd_obj*) ;
 void* kmalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int r8712_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int stub1 (struct _adapter*,int ) ;

u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
   struct ndis_802_11_ssid *pssid)
{
 struct cmd_obj *ph2c;
 struct sitesurvey_parm *psurveyPara;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 ph2c = kmalloc(sizeof(*ph2c), GFP_ATOMIC);
 if (!ph2c)
  return _FAIL;
 psurveyPara = kmalloc(sizeof(*psurveyPara), GFP_ATOMIC);
 if (!psurveyPara) {
  kfree(ph2c);
  return _FAIL;
 }
 init_h2fwcmd_w_parm_no_rsp(ph2c, psurveyPara,
       GEN_CMD_CODE(_SiteSurvey));
 psurveyPara->bsslimit = cpu_to_le32(48);
 psurveyPara->passive_mode = cpu_to_le32(pmlmepriv->passive_mode);
 psurveyPara->ss_ssidlen = 0;
 memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
 if ((pssid != ((void*)0)) && (pssid->SsidLength)) {
  memcpy(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
  psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
 }
 set_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
 r8712_enqueue_cmd(pcmdpriv, ph2c);
 mod_timer(&pmlmepriv->scan_to_timer,
    jiffies + msecs_to_jiffies(SCANNING_TIMEOUT));
 padapter->ledpriv.LedControlHandler(padapter, LED_CTL_SITE_SURVEY);
 padapter->blnEnableRxFF0Filter = 0;
 return _SUCCESS;
}
