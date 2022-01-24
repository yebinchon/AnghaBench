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
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; struct cmd_obj* parmbuf; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
typedef  struct cmd_obj u8 ;
typedef  int u32 ;
struct wlan_bssid_ex {int dummy; } ;
struct survey_event {int /*<<< orphan*/  bss; } ;
struct recv_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bss_cnt; } ;
struct mlme_ext_priv {TYPE_1__ sitesurvey_res; int /*<<< orphan*/  event_seq; } ;
struct cmd_priv {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int /*<<< orphan*/  seq; int /*<<< orphan*/  ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _Set_MLME_EVT_CMD_ ; 
 int /*<<< orphan*/  _Survey_EVT_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct adapter*,struct recv_frame*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_obj*) ; 
 struct cmd_obj* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_priv*,struct cmd_obj*) ; 

void FUNC7(struct adapter *padapter,
			 struct recv_frame *precv_frame)
{
	struct cmd_obj *pcmd_obj;
	u8 *pevtcmd;
	u32 cmdsz;
	struct survey_event *psurvey_evt;
	struct C2HEvent_Header *pc2h_evt_hdr;
	struct mlme_ext_priv *pmlmeext;
	struct cmd_priv *pcmdpriv;

	if (!padapter)
		return;

	pmlmeext = &padapter->mlmeextpriv;
	pcmdpriv = &padapter->cmdpriv;

	pcmd_obj = FUNC4(sizeof(struct cmd_obj), GFP_ATOMIC);
	if (!pcmd_obj)
		return;

	cmdsz = sizeof(struct survey_event) + sizeof(struct C2HEvent_Header);
	pevtcmd = FUNC4(cmdsz, GFP_ATOMIC);
	if (!pevtcmd) {
		FUNC3(pcmd_obj);
		return;
	}

	FUNC0(&pcmd_obj->list);

	pcmd_obj->cmdcode = _Set_MLME_EVT_CMD_;
	pcmd_obj->cmdsz = cmdsz;
	pcmd_obj->parmbuf = pevtcmd;

	pcmd_obj->rsp = NULL;
	pcmd_obj->rspsz  = 0;

	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
	pc2h_evt_hdr->len = sizeof(struct survey_event);
	pc2h_evt_hdr->ID = _Survey_EVT_;
	pc2h_evt_hdr->seq = FUNC1(&pmlmeext->event_seq);

	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));

	if (FUNC2(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
		FUNC3(pcmd_obj);
		FUNC3(pevtcmd);
		return;
	}

	FUNC5(padapter, &psurvey_evt->bss);

	FUNC6(pcmdpriv, pcmd_obj);

	pmlmeext->sitesurvey_res.bss_cnt++;
}