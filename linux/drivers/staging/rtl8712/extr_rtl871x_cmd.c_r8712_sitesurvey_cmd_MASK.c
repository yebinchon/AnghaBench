#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sitesurvey_parm {void* ss_ssidlen; int /*<<< orphan*/  ss_ssid; void* passive_mode; void* bsslimit; } ;
struct ndis_802_11_ssid {int SsidLength; int /*<<< orphan*/  Ssid; } ;
struct mlme_priv {int passive_mode; int /*<<< orphan*/  scan_to_timer; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* LedControlHandler ) (struct _adapter*,int /*<<< orphan*/ ) ;} ;
struct _adapter {scalar_t__ blnEnableRxFF0Filter; TYPE_1__ ledpriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  LED_CTL_SITE_SURVEY ; 
 int /*<<< orphan*/  SCANNING_TIMEOUT ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _FW_UNDER_SURVEY ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _SiteSurvey ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*,struct sitesurvey_parm*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_obj*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cmd_priv*,struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct _adapter*,int /*<<< orphan*/ ) ; 

u8 FUNC12(struct _adapter *padapter,
			struct ndis_802_11_ssid *pssid)
{
	struct cmd_obj	*ph2c;
	struct sitesurvey_parm	*psurveyPara;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	ph2c = FUNC4(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return _FAIL;
	psurveyPara = FUNC4(sizeof(*psurveyPara), GFP_ATOMIC);
	if (!psurveyPara) {
		FUNC3(ph2c);
		return _FAIL;
	}
	FUNC2(ph2c, psurveyPara,
				   FUNC0(_SiteSurvey));
	psurveyPara->bsslimit = FUNC1(48);
	psurveyPara->passive_mode = FUNC1(pmlmepriv->passive_mode);
	psurveyPara->ss_ssidlen = 0;
	FUNC6(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
	if ((pssid != NULL) && (pssid->SsidLength)) {
		FUNC5(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
		psurveyPara->ss_ssidlen = FUNC1(pssid->SsidLength);
	}
	FUNC10(pmlmepriv, _FW_UNDER_SURVEY);
	FUNC9(pcmdpriv, ph2c);
	FUNC7(&pmlmepriv->scan_to_timer,
		  jiffies + FUNC8(SCANNING_TIMEOUT));
	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_SITE_SURVEY);
	padapter->blnEnableRxFF0Filter = 0;
	return _SUCCESS;
}